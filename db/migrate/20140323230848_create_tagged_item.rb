class CreateTaggedItem < ActiveRecord::Migration
  def change
    create_table :tagged_items do |t|
      t.integer :item_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
