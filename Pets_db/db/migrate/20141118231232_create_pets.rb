class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :animal_type
      t.string :breed
      t.integer :owner_id

      t.timestamps
    end
  end
end
