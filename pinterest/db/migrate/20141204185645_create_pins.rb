class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :name
      t.string :image
      t.integer :user_id
      t.integer :board_id

      t.timestamps
    end
  end
end
