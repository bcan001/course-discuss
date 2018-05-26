class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    # becomes a polymorphic table. POSTS CAN BELONG TO EACH OTHER
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.string :relationship_type # post, school, or course
      t.integer :relationship_id
      t.timestamps null: false
    end
    add_index :posts, :user_id
    add_index :posts, [:relationship_type,:relationship_id]
  end
end
