class Presenters::V1::TagPresenter < ::Presenter

  attr_accessor :tag

  def initialize(item)
    @tag = item
    super(@tag)
  end

  def to_hash(item = tag)
    HashWithIndifferentAccess.new(
    {
      name:   tag.name,
      tagged_items: {
        count: tag.tagged_items.count,
        items: tag.tagged_items.map do |item|
                 { id: item.item_id }
               end
      },
      path:   tag_path(1, tag.name)
    })
  end
end
