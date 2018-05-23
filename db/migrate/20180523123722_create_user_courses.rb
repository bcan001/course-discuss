class CreateUserCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_courses do |t|
    	t.integer :user_id
      t.integer :course_id
      t.timestamps null: false
    end
    add_index :user_courses, :user_id
    add_index :user_courses, :course_id
  end
end
