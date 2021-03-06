class TaggedItemsController < ApplicationController
  include ApplicationHelper
  before_action :find_tag
  before_action :find_tagged_item, except: [:index, :create]
  # Show a single tagged items for a given tag
  # Example:
  #  `curl -v -H "Content-type: application/json" 'http://localhost:3000/api/v1/tags/android/tagged_items/1.json'`
  def show
    Rails.logger.debug "Tagged item is #{@tagged_item.inspect}"
    render_if_stale(@tagged_item, last_modified: @tagged_item.updated_at.utc, etag: @tagged_item) do |tagged_item_presenter|
      tagged_item_presenter.hash
    end
    # explicitly setting the Cache-Control response header to public and max-age, to make the response cachable by proxy caches
    expires_in caching_time, public: true
  end

  # List all tagged items for a given tag
  # Example:
  #  `curl -v -H "Content-type: application/json" 'http://localhost:3000/api/v1/tags/android/tagged_items.json'`
  def index
    all_tagged_items = @tag.tagged_items
    return json_response([]) unless newest_tagged_item = all_tagged_items.sort_by(&:updated_at).last
    Rails.logger.info "newest_tagged_item is #{newest_tagged_item.inspect}"
    render_if_stale(all_tagged_items, last_modified: newest_tagged_item.updated_at.utc, etag: newest_tagged_item) do |tagged_item_presenters|
      tagged_item_presenters.map(&:hash)
    end
    # explicitly setting the Cache-Control response header to public and max-age, to make the response cachable by proxy caches
    expires_in caching_time, public: true
  end

  # Create a new tagged_item for a given tag and item ID.
  # Example:
  #  `curl -v -H "Content-type: application/json" -X POST 'http://localhost:3000/api/v1/tags/android/tagged_items.json' \
  #         -d '{"id":1}'`
  def create
    item = TaggedItem.find_or_initialize_by(item_id: params[:id], tag_id: @tag.id)
    render(json: {error: "Tagged item combination {tag-name: #{@tag.name}, item_id: #{item.item_id}] already exists."}, status: :conflict) and return unless item.new_record?
    if item.save
      render text: '{"success": true}', status: :created, location: tagged_item_url(item, (params[:version]))
    else
      Rails.logger.error "cannot create because there were errors saving #{item.attributes.inspect} ... #{item.errors.to_hash}"
      render(json: item.errors, status: :unprocessable_entity)
    end
  end


  # Delete a tagged_item entry for a given tag and item ID
  # Example:
  #  `curl -v -H "Content-type: application/json" -X DELETE 'http://localhost:3000/api/v1/tags/android/tagged_items/1.json'`
  def destroy
    Rails.logger.debug "Tagged item is #{@tagged_item.inspect}"
    if @tagged_item.destroy
      render text: '{"success": true}', status: :no_content, location: tagged_item_url(@tagged_item, (params[:version]))
    else
      Rails.logger.error "cannot destroy tagged item because there were errors deleting the tag #{@tagged_item.attributes.inspect} ... #{@tagged_item.errors.to_hash}"
      render(json: @tagged_item.errors, status: :bad_request)
    end
  end


  private

  def find_tag
    not_found_with_max_age(caching_time) and return unless (@tag = Tag.find_by_name(params[:tag_id]))
  end

  def find_tagged_item
    not_found_with_max_age(caching_time) and return unless (@tagged_item = @tag.tagged_items.where(item_id: params[:id]).first)
  end
end
