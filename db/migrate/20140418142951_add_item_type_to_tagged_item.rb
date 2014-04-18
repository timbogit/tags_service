class AddItemTypeToTaggedItem < ActiveRecord::Migration
  def up
    remove_index :tagged_items, column: :item_id
    remove_index :tagged_items, column: :tag_id
    remove_index :tagged_items, column: [:item_id, :tag_id]

    add_column :tagged_items, :item_type, :integer, :default => 1

    add_index :tagged_items, [:item_id, :item_type]
    add_index :tagged_items, [:tag_id, :item_type]
    add_index :tagged_items, [:item_id, :item_type, :tag_id], unique: true
  end

  def down
    remove_index :tagged_items, column: [:item_id, :item_type]
    remove_index :tagged_items, column: [:tag_id, :item_type]
    remove_index :tagged_items, column: [:item_id, :item_type, :tag_id]

    remove_column :tagged_items, :item_type

    add_index :tagged_items, :item_id
    add_index :tagged_items, :tag_id
    add_index :tagged_items, [:item_id, :tag_id], unique: true
  end
end
