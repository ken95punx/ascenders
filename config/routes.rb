Rails.application.routes.draw do
  get 'player/' => 'player#index'

  get 'article/:id' => 'article#show'
  get 'article/' => 'article#index'

  get 'movie/' => 'movie#index'
  post 'movie/:movie_id' => 'movie#click_movie'

  get '/' => 'top#index'
  post '/:movie_id' => 'top#click_movie'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
