class AddMovieThumToMovies < ActiveRecord::Migration[5.1]
  def change
  	add_column :movies, :movie_thum, :string
  end
end
