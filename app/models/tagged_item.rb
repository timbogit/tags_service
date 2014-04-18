class TaggedItem < ActiveRecord::Base
  attr_accessible :item_id, :tag_id, :item_type

  belongs_to :tag
  validates_presence_of :item_id, :tag_id, :item_type
  validates_uniqueness_of :item_id, scope: [:tag_id, :item_type]

  def self.item_type_id_for(item_type = 'inventory_item')
    case item_type
    when 'city'
      2
    else
      1
    end
  end
end
