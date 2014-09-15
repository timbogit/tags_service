# @resource Tagged Items
#
# @resource_path /tagged_items
#
# API for managing associations between tags and items.
#
class TaggedItemsController < ApplicationController
  include ApplicationHelper
  before_action :find_tag
  before_action :find_tagged_item, except: [:index, :create]

  ##
  # @summary Fetches a single tagged item for tag {tag_name} and item ID {id}.
  #
  # @notes Example: `curl -v -H "Content-type: application/json" 'http://localhost:3000/api/v1/tags/android/tagged_items/1.json'`
  #
  # @path [GET] /tags/{tag_name}/tagged_items/{id}.json
  #
  # @response_type     [TaggedItem]
  #
  # @error_message     304  The content has not changed in relation to the request ETag / If-Modified-Since
  # @error_message     404  The requested tagged item cannot be found
  #
  def show
    Rails.logger.debug "Tagged item is #{@tagged_item.inspect}"
    render_if_stale(@tagged_item, last_modified: @tagged_item.updated_at.utc, etag: @tagged_item) do |tagged_item_presenter|
      tagged_item_presenter.hash
    end
    # explicitly setting the Cache-Control response header to public and max-age, to make the response cachable by proxy caches
    expires_in caching_time, public: true
  end

  ##
  # @summary Returns all tagged items for tag {tag_name}
  #
  # @notes Example: `curl -v -H "Content-type: application/json" 'http://localhost:3000/api/v1/tags/android/tagged_items.json'`
  #
  # @path [GET] /tags/{tag_name}/tagged_items.json
  #
  # @response_type     [array<TaggedItem>]
  #
  # @error_message     304   The content has not changed in relation to the request ETag / If-Modified-Since
  #
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

  ##
  # @summary Tags an item with ID {id} with tag by name {tag_name}
  #
  # @notes Example: `curl -v -H "Content-type: application/json" -X POST 'http://localhost:3000/api/v1/tags/android/tagged_items.json' \
  #                    -d '{"id":1}'`
  #
  # @path [POST] /tags/{tag_name}/tagged_items.json
  #
  # @parameter         [integer]    id(required)  ID of the item to be tagged
  #
  # @response_type     [string]
  #
  # @error_message     422   Unprocessable Entity
  #
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

  ##
  # @summary Deletes an existing association between a tag (by {tag_name}) and a tagged item (by {id}).
  #
  # @notes Example: `curl -v -H "Content-type: application/json" -X DELETE 'http://localhost:3000/api/v1/tags/android/tagged_items/1.json'`
  #
  # @path [DELETE] /tags/{tag_name}/tagged_items/{id}.json
  #
  # @response_type     [string]
  #
  # @error_message     400  Bad Request, cannot destroy tagged item because there were errors deleting the tag
  # @error_message     404  The requested tagged item to be deleted cannot be found
  #

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
