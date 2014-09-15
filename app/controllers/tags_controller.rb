# @resource Tags
#
# @resource_path /tags
#
# API for tag management.
#
class TagsController < ApplicationController

  ##
  # @summary Fetches a single tag by its name {name}.
  #
  # @notes Example: `curl -v -H "Content-type: application/json" 'http://localhost:3000/api/v1/tags/paranoid.json'
  #
  # @path [GET] /tags/{name}.json
  #
  # @response_type     [Tag]
  #
  # @error_message     304  The content has not changed in relation to the request ETag / If-Modified-Since
  # @error_message     404  A tag of the provided name cannot be found
  #
  def show
    not_found_with_max_age(caching_time) and return unless (@tag = Tag.find_by_name(params[:id]))
    Rails.logger.debug "Tag with name #{@tag.name} is #{@tag.inspect}"

    render_if_stale(@tag, last_modified: @tag.updated_at.utc, etag: @tag) do |tag_presenter|
      tag_presenter.hash
    end
    # explicitly setting the Cache-Control response header to public and max-age, to make the response cachable by proxy caches
    expires_in caching_time, public: true
  end

  ##
  # @summary Fetches all tags (filterable by tags for a given {item_id})
  #
  # @notes Example: `curl -v -H "Content-type: application/json" 'http://localhost:3000/api/v1/tags.json'`
  #
  # @path [GET] /tags.json
  #
  # @parameter         [integer]    item_id(query)  ID of the tagged inventory item by which to filter the tags
  #
  # @response_type     [array<Tag>]
  #
  # @error_message     304   The content has not changed in relation to the request ETag / If-Modified-Since
  #
  def index
    item_id = params[:item_id].to_i
    all_tags = (item_id > 0) ? Tag.joins(:tagged_items).where(tagged_items: {item_id: item_id}) : Tag.all
    return json_response([]) unless newest_tag = all_tags.sort_by(&:updated_at).last
    Rails.logger.info "newest_tag is #{newest_tag.inspect}, all tags are of size: #{all_tags.count}"
    render_if_stale(all_tags, last_modified: newest_tag.updated_at.utc, etag: newest_tag) do |tag_presenters|
      tag_presenters.map(&:hash)
    end
    # explicitly setting the Cache-Control response header to public and max-age, to make the response cachable by proxy caches
    expires_in caching_time, public: true
  end

  ##
  # @summary Creates a new tag by the given name
  #
  # @notes Example: `curl -v -H "Content-type: application/json" -X POST 'http://localhost:3000/api/v1/tags.json' \
  #                    -d '{"name":"android"}'`
  #
  # @path [POST] /tags.json
  #
  # @parameter         [string]    name(required,body)  Name (unique) of the tag to be created
  #
  # @response_type     [string]
  #
  # @error_message     409   Conflict, a Tag with given name already exists
  # @error_message     422   Unprocessable Entity, the tag cannot be created because there were errors saving
  #
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

  ##
  # @summary Updates an existing tag's name, referenced by its current name
  #
  # @notes Example: `curl -v -H "Content-type: application/json" -X PUT 'http://localhost:3000/api/v1/tags/android.json' \
  #                    -d '{"name":"paranoid"}'`
  #
  # @path [PUT] /tags/{name}.json
  #
  # @parameter         [string]    new_name(required,body)  The tag's new name
  #
  # @response_type     [string]
  #
  # @error_message     404   Not Found, a Tag with given name does not exists
  # @error_message     422   Unprocessable Entity, the tag cannot be updated because there were errors saving
  #
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

  ##
  # @summary Deletes an existing tag referenced by its name
  #
  # @notes Example: `curl -v -H "Content-type: application/json" -X DELETE 'http://localhost:3000/api/v1/tags/paranoid.json'`
  #
  # @path [DELETE] /tags/{name}.json
  #
  # @response_type     [string]
  #
  # @error_message     404  A tag of the provided name cannot be found
  # @error_message     422  Unprocessable Entity, the tag cannot be deleted because there were errors destroying it
  #
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

end
