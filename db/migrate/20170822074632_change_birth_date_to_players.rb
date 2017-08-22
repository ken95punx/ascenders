class ChangeBirthDateToPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :birth_date, :datetime
    add_column :players, :birth_date, :date
  end
end
