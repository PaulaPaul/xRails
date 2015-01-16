class CreateCharlotteHornets < ActiveRecord::Migration
  def change
    create_table :charlotte_hornets do |t|
      t.string :name
      t.integer :number
      t.string :position
      t.string :college

      t.timestamps
    end
  end
end
