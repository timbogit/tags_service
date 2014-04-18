class Presenters::V2::TaggedItemPresenter < Presenters::V1::TaggedItemPresenter

  def to_hash(tagged_item = item)
    HashWithIndifferentAccess.new(
    {
      tagged_item_id:   tagged_item.item_id,
      tagged_item_type: tagged_item.item_type,
      url:              tagged_item_url(tagged_item, self.class.version_number),
      tag_name:         tagged_item.tag.name
    })
  end
end
