class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :tagged_items
  validates_presence_of :name
  validates_uniqueness_of :name
end
