class CreatePosts < ActiveRecord::Migration[5.2]
  def change
  	# becomes a polymorphic table
    create_table :posts do |t|
    	t.string :title
      t.string :description
      t.string :relationship_type # user, school, or course
      t.integer :relationship_id
      t.timestamps null: false
    end
    add_index :posts, [:relationship_type,:relationship_id]
  end
end
