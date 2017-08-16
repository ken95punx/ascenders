class ChangeMovieUrlToMovies < ActiveRecord::Migration[5.1]
  def change
  	remove_column :movies, :movie_url, :string
  	add_column :movies, :movie_url, :text
  end
end
