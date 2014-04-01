class TaggedItem < ActiveRecord::Base
  attr_accessible :item_id, :tag_id

  belongs_to :tag
  validates_presence_of :item_id, :tag_id
  validates_uniqueness_of :item_id, scope: :tag_id
end
