Rails.application.routes.draw do
  root 'sessions#new'
  resources :users do
    get 'shows/behind', to: 'shows#behind'
    resources :shows, only: [:index]
  end
  
  resources :shows do
    
  end
  resources :genres, only: [:index, :show]
  resources :channels, only: [:index, :show]
  get '/search', to: 'shows#search'
  get '/auth/google/callback', to: 'users#google_login'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :favorite_shows, only: [:create, :destroy]
end
