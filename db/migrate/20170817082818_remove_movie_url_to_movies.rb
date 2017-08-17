class RemoveMovieUrlToMovies < ActiveRecord::Migration[5.1]
  def change
  	remove_column :movies, :movie_url, :text
  end
end
