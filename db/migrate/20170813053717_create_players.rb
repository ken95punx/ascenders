class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :kana_name
      t.string :profile_image
      t.string :cover_image
      t.datetime :birth_date
      t.string :place_birth
      t.string :blood_type
      t.string :league_school
      t.string :team
      t.integer :height
      t.integer :weight
      t.string :alma_mater
      t.string :website
      t.text :introduction
      t.string :opponent_next
      t.datetime :time_next
      t.string :url_next
      t.string :opponent_result
      t.string :result_result
      t.integer :self_point_result
      t.integer :enemy_point_result
      t.string :url_result
      t.integer :sports_id
      t.integer :staff_id

      t.timestamps
    end
  end
end
