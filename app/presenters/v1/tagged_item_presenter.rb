class Presenters::V1::TaggedItemPresenter < ::Presenter

  attr_accessor :tagged_item

  def initialize(item)
    @tagged_item =item
    super(@tagged_item)
  end

  def to_hash(tagged_item = item)
    HashWithIndifferentAccess.new(
    {
      tagged_item_id: tagged_item.item_id,
      url:            tagged_item_url(tagged_item, self.class.version_number),
      tag_name:       tagged_item.tag.name
    })
  end
end
