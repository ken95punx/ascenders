Rails.application.routes.draw do
  get 'gellery/:player_id' => 'gellery#index'
  get 'gellery/:player_id/:id' => 'gellery#show'

  get 'sport/' => 'sport#index'

  get 'player/' => 'player#index'
  get 'player/:id' => 'player#show'
  post 'player/:movie_id' => 'player#click_movie'

  get 'article/' => 'article#index'
  get 'article/:id' => 'article#show'

  get 'movie/' => 'movie#index'
  post 'movie/:movie_id' => 'movie#click_movie'

  get '/' => 'top#index'
  post '/:movie_id' => 'top#click_movie'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
