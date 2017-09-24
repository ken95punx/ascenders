class AddColumnNameToAdministrators < ActiveRecord::Migration[5.1]
  def change
    add_column :administrators, :name, :string
  end
end
