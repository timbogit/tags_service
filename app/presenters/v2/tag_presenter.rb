class Presenters::V2::TagPresenter < Presenters::V1::TagPresenter

  def to_hash(tg = tag)
    HashWithIndifferentAccess.new(
    {
      name:   tg.name,
      tagged_items: {
        count: tg.tagged_items.count,
        items: tg.tagged_items.map do |item|
                 { id:   item.item_id,
                   type: item.item_type,
                   url:  tagged_item_url(item, self.class.version_number) }
               end
      },
      path:   tag_path(self.class.version_number, tg.name)
    })
  end

end
