class AddColumnConventionToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :convention_next, :string
    add_column :players, :convention_result, :string
  end
end
