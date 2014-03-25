class CreateTaggedItem < ActiveRecord::Migration
  def change
    create_table :tagged_items do |t|
      t.integer :item_id
      t.integer :tag_id

      t.timestamps
    end
    add_index :tagged_items, :item_id
    add_index :tagged_items, :tag_id
    add_index :tagged_items, [:item_id, :tag_id], unique: true
  end
end
