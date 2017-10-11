Rails.application.routes.draw do
  get '/login' => 'sessions#new', :as => :login  #ログイン画面
  post '/logout' => 'sessions#destroy', :as => :logout  #ログアウト

  resources :administrators, only: [:index, :new, :create, :edit, :update, :destroy]  #管理トップ,新規登録画面,新規登録,アカウント編集画面,アカウント編集,編集者削除
  resources :sessions #ログイン・ログアウト関連

  get 'player/:player_id/frined' => 'friend#index'

  get 'player/:player_id/gellery' => 'gellery#index'
  get 'player/:player_id/gellery/:id' => 'gellery#show'

  get 'sport/' => 'sport#index'

  get 'player/' => 'player#index'
  get 'player/:id' => 'player#show'
  post 'player/:movie_id' => 'player#click_movie'

  get 'article/' => 'article#index'
  get 'article/:id' => 'article#show'

  get 'movie/' => 'movie#index'
  post 'movie/:movie_id' => 'movie#click_movie'

  get 'about/' => 'top#about'

  root :to => 'top#index'
  post '/:movie_id' => 'top#click_movie'

  namespace :admin do
    resources :administrators #必須
    resources :articles #任意（必要なモデル）
    resources :gelleries #任意（必要なモデル）
    resources :movies #任意（必要なモデル）
    resources :players #任意（必要なモデル）
    resources :sports #任意（必要なモデル）
    resources :friend_relationships #任意（必要なモデル）

    root to: "administrators#index" #トップにしたい画面（先頭にadminは不要）
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
