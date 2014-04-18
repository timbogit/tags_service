module ApplicationHelper
  def tagged_item_url(tagged_item, version = 1)
    case TaggedItem.item_type_name_for(tagged_item.item_type)
    when 'city'
      "http://cities-service-development.herokuapp.com/api/v#{version}/cities/#{tagged_item.item_id}"
    else
      "http://inventory-service-development.herokuapp.com/api/v#{version}/inventory_items/#{tagged_item.item_id}"
    end
  end
end
