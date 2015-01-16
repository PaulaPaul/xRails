class CreateBallotMeasures < ActiveRecord::Migration
  def change
    create_table :ballot_measures do |t|
      t.string :number
      t.string :title
      t.float :funding

      t.timestamps
    end
  end
end
