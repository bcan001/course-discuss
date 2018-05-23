class CreateUserSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :user_schools do |t|
    	t.integer :user_id
      t.integer :school_id
      t.timestamps null: false
    end
    add_index :user_schools, :user_id
    add_index :user_schools, :school_id
  end
end
