class CreatePetclubs < ActiveRecord::Migration
  def change
    create_table :petclubs do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
