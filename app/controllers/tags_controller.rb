class TagsController < ApplicationController
  # Show a single tag
  # Example:
  #  `curl -v -H "Content-type: application/json" 'http://localhost:3000/api/v1/tags/paranoid.json'
  def show
    not_found_with_max_age(caching_time) and return unless (@tag = Tag.find_by_name(params[:id]))
    Rails.logger.debug "Tag with name #{@tag.name} is #{@tag.inspect}"

    render_if_stale(@tag, last_modified: @tag.updated_at.utc, etag: @tag) do |tag_presenter|
      tag_presenter.hash
    end
    # explicitly setting the Cache-Control response header to public and max-age, to make the response cachable by proxy caches
    expires_in caching_time, public: true
  end

  # List all tags (can be filtered by "item_id" parameter)
  # Example:
  #  `curl -v -H "Content-type: application/json" 'http://localhost:3000/api/v1/tags.json{?item_id=1}'`
  #  `curl -v -H "Content-type: application/json" 'http://localhost:3000/api/v2/tags.json{?item_id=1&item_type=city}'`
  def index
    all_tags = filter_by_item_it_and_type(params[:item_id].to_i, params[:item_type], params[:version].to_i)
    return json_response([]) unless newest_tag = all_tags.sort_by(&:updated_at).last
    Rails.logger.info "newest_tag is #{newest_tag.inspect}"
    render_if_stale(all_tags, last_modified: newest_tag.updated_at.utc, etag: newest_tag) do |tag_presenters|
      tag_presenters.map(&:hash)
    end
    # explicitly setting the Cache-Control response header to public and max-age, to make the response cachable by proxy caches
    expires_in caching_time, public: true
  end

  # Create a new tag.
  # Example:
  #  `curl -v -H "Content-type: application/json" -X POST 'http://localhost:3000/api/v1/tags.json' \
  #         -d '{"name":"android"}'`
  def create
    tag = Tag.find_or_initialize_by(params.slice(:name))
    render(json: {error: "Tag with name #{params[:name]} already exists."}, status: :conflict) and return unless tag.new_record?
    if tag.save
      render text: '{"success": true}', status: :created, location: tag_path(params[:version], tag.name)
    else
      Rails.logger.error "cannot create because there were errors saving #{tag.attributes.inspect} ... #{tag.errors.to_hash}"
      render(json: tag.errors, status: :unprocessable_entity)
    end
  end

  # Update an existing tag.
  # Example:
  #  `curl -v -H "Content-type: application/json" -X PUT 'http://localhost:3000/api/v1/tags/android.json' \
  #         -d '{"name":"paranoid"}'`
  def update
    tag = Tag.find_by_name(params[:id])
    render(json: {error: "Tag with name #{params[:id]} does not exists."}, status: :not_found) and return if tag.nil?
    tag.name = params[:name]
    if tag.save
      render text: '{"success": true}', status: :no_content, location: tag_path(params[:version], tag.name)
    else
      Rails.logger.error "cannot create because there were errors saving #{tag.attributes.inspect} ... #{tag.errors.to_hash}"
      render(json: tag.errors, status: :unprocessable_entity)
    end
  end

  # Delete a tag
  # Example:
  #  `curl -v -H "Content-type: application/json" -X DELETE 'http://localhost:3000/api/v1/tags/paranoid.json'`
  def destroy
    tag = Tag.find_by_name(params[:id])
    render(json: {error: "Tag with name #{params[:id]} does not exists."}, status: :not_found) and return if tag.nil?
    if tag.destroy
      render text: '{"success": true}', status: :no_content, location: tag_path(params[:version], tag.name)
    else
      Rails.logger.error "cannot destroy tag because there were errors deleting the tag #{tag.attributes.inspect} ... #{tag.errors.to_hash}"
      render(json: tag.errors, status: :bad_request)
    end
  end

  private

  def filter_by_item_it_and_type(item_id, item_type = 'all', version = 1)
    item_id = params[:item_id].to_i
    case version
    when 2
      case
      when item_id == 0 && item_type = 'all'
        Tag.all
      when item_id == 0 && item_type != 'all'
        Tag.joins(:tagged_items).where(tagged_items: { item_type: TaggedItem.item_type_id_for(item_type) })
      when item_id > 0  && item_type == 'all'
        Tag.joins(:tagged_items).where(tagged_items: { item_id: item_id })
      when item_id > 0  && item_type != 'all'
        Tag.joins(:tagged_items).where(tagged_items: {item_id: item_id, item_type: TaggedItem.item_type_id_for(item_type)})
      end
    else
      if item_id > 0
        Tag.joins(:tagged_items).where(tagged_items: {item_id: item_id, item_type: TaggedItem.item_type_id_for('inventory_item')})
      else
        Tag.all
      end
    end
  end
end
