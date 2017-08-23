class ChangeSportsIdToSport < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :sports_id, :integer
    add_column :players, :sport_id, :integer
  end
end
