class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
    	t.string :name
      t.string :city
      t.string :state
      t.timestamps null: false
    end
    add_index :schools, :name
    add_index :schools, :city
    add_index :schools, :state
  end
end
