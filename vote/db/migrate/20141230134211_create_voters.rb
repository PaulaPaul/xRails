class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :first_name
      t.string :last_name
      t.string :party
      t.integer :district

      t.timestamps
    end
  end
end
