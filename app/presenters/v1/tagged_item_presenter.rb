class Presenters::V1::TaggedItemPresenter < ::Presenter
  include ActionView::Helpers::TextHelper
  include Rails.application.routes.url_helpers

  attr_accessor :tagged_item

  def initialize(item)
    @tagged_item =item
    super(@tagged_item)
  end

  def to_hash(tagged_item = item)
    HashWithIndifferentAccess.new(
    {
      tagged_item_id: tagged_item.item_id,
      url:            "http://inventory-service-development.herokuapp.com/api/v1/inventory_items/#{tagged_item.item_id}",
      tag_name:       tagged_item.tag.name
    })
  end
end
