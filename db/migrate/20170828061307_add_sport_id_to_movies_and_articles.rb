class AddSportIdToMoviesAndArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :sport_id, :integer
    add_column :articles, :sport_id, :integer
  end
end
