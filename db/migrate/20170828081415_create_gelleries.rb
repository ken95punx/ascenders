class CreateGelleries < ActiveRecord::Migration[5.1]
  def change
    create_table :gelleries do |t|
      t.string :image
      t.integer :player_id

      t.timestamps
    end
  end
end
