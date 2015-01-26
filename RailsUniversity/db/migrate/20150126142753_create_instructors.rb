class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.date :hire_date
      t.string :office
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
