class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :movie_url
      t.integer :player_id

      t.timestamps
    end
  end
end
