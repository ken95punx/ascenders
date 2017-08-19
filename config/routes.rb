Rails.application.routes.draw do
  get 'movie/index'

  get '/' => 'top#index'
  post '/:movie_id' => 'top#click_movie'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
