class CreateUserTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tutors do |t|
    	t.integer :rate
      t.string :rate_type # hourly, daily, etc.
      t.string :description
      t.integer :user_id
      t.integer :course_id
      t.timestamps null: false
    end
    add_index :user_tutors, [:user_id,:course_id]
    add_index :user_tutors, :course_id
  end
end
