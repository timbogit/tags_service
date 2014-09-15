#
# @model TaggedItem
#
# @property tagged_item_id(required) [integer]   ID of the item tagged
# @property url [string]  URI of the resource for the item that has been tagged
# @property tag_name(required) [string]  Name of the tag given to the item
#
# example:
#       ````
#       {
#         "tagged_item_id": 42,
#         "url": "http://inventory-service-development.herokuapp.com/api/v1/inventory_items/42",
#         "tag_name": "bacon"
#       }
#       ````
#
class TaggedItem < ActiveRecord::Base
  attr_accessible :item_id, :tag_id

  belongs_to :tag
  validates_presence_of :item_id, :tag_id
  validates_uniqueness_of :item_id, scope: :tag_id
end
