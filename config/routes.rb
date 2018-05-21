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
  post '/persons/create', to: 'persons#create'
  get '/persons/all', to: 'persons#show_all'
  get '/persons/actor', to: 'persons#show_actors'
  get '/persons/director', to: 'persons#show_directors'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
