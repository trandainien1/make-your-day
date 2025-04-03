class CreateBookmarks < ActiveRecord::Migration[8.0]
  def change
    create_table :bookmarks, primary_key: [:user_id, :post_id] do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
