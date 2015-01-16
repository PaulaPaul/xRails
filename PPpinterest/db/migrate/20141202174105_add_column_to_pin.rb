class AddColumnToPin < ActiveRecord::Migration
  def change
    add_column :pins, :board_id, :integer
  end
end
