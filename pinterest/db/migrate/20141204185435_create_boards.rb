class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.text :about
      t.integer :user_id

      t.timestamps
    end
  end
end
