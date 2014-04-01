module ApplicationHelper
  def tagged_item_url(tagged_item, version = 1)
    "http://inventory-service-development.herokuapp.com/api/v#{version}/inventory_items/#{tagged_item.item_id}"
  end
end
