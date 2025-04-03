class AddUniqueCompositeKeyToBookmark < ActiveRecord::Migration[8.0]
  def change
    add_index :bookmarks, [:user_id, :post_id], unique: true
  end
end
