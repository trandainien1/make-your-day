class CreateLikes < ActiveRecord::Migration[8.0]
  def change
    create_table :likes do |t|
      t.string :user_id
      t.string :integer
      t.integer :comment_id

      t.timestamps
    end 
  end
end

# them index
