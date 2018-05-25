class CreateUserFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :user_favorites do |t|
    	t.integer :user_id
      t.string :favorite_type # post, comment
      t.integer :favorite_id
      t.timestamps null: false
    end
    add_index :user_favorites, [:user_id,:favorite_type]
    add_index :user_favorites, [:favorite_type,:favorite_id]
  end
end
