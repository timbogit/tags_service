module Presenters
  module V1
    autoload :TagPresenter,            "v1/tag_presenter"
    autoload :TaggedItemPresenter,     "v1/tagged_item_presenter"
  end

  module V2
    autoload :TagPresenter,            "v2/tag_presenter"
    autoload :TaggedItemPresenter,     "v2/tagged_item_presenter"
  end
end
