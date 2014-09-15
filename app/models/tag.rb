#
# @model Tag
#
# @property name(required) [string]  Name of the tag given to the item
# @property path(required) [string]  Path of the resource representing this tag
#
# example:
#       ````
#       {
#         "name": "bacon",
#         "tagged_items": {
#           "count": 1,
#           "items": [
#             { "id":  3,
#               "url": "http://inventory-service-development.herokuapp.com/api/v1/inventory_items/3"}
#           ]
#         },
#         "path": "api/v1/tags/bacon"
#       }
#       ````
#
class Tag < ActiveRecord::Base
  attr_accessible :name, :id

  has_many :tagged_items, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name
end
