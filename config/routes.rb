Rails.application.routes.draw do
  resources :movie_categories
  resources :actormovies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors


  root to: 'application#index'


  get '/persons/new', to: 'persons#new'
  POST '/create', to: 'persons#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
