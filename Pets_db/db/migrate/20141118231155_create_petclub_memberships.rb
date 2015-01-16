class CreatePetclubMemberships < ActiveRecord::Migration
  def change
    create_table :petclub_memberships do |t|
      t.string :primary_contact
      t.string :pet_name
      t.integer :petclub_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
