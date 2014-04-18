class Presenters::V1::TagPresenter < ::Presenter

  attr_accessor :tag

  def initialize(item)
    @tag = item
    super(@tag)
  end

  def to_hash(tg = tag)
    HashWithIndifferentAccess.new(
    {
      name:   tg.name,
      tagged_items: {
        count: tg.tagged_items.count,
        items: tg.tagged_items.map do |item|
                 { id:  item.item_id,
                   url: tagged_item_url(item, self.class.version_number) }
               end
      },
      path:   tag_path(self.class.version_number, tg.name)
    })
  end
end
