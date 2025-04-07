class AddIndexToLike < ActiveRecord::Migration[8.0]
  def change
    add_index :likes, [:user_id, :comment_id], unique: true
  end
end
