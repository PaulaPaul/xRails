class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.string :vote
      t.integer :voter_id
      t.integer :ballot_measure_id

      t.timestamps
    end
  end
end
