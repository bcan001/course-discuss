class CreateIsTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :is_tutors do |t|
    	t.integer :rate
      t.string :description
      t.integer :user_id
      t.integer :course_id
      t.timestamps null: false
    end
    add_index :is_tutors, [:user_id,:course_id]
    add_index :is_tutors, :course_id
  end
end
