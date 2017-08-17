class AddMovieHtmlToMovies < ActiveRecord::Migration[5.1]
  def change
  	add_column :movies, :movie_html, :text
  end
end
