class ChangeStaffIdToAdministrators < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :staff_id, :integer
    add_column :players, :administrator_id, :integer
  end
end
