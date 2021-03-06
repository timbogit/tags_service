class Tag < ActiveRecord::Base
  attr_accessible :name, :id

  has_many :tagged_items, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name
end
