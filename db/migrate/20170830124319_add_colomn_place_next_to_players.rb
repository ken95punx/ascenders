class AddColomnPlaceNextToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :place_next, :string
  end
end
