Rails.application.routes.draw do
  # resources: :sessions, only: [:new, :create, :destroy]
  resources :visitors, only: [:new, :create, :edit, :update]
  resources :comments, only: :create
  resources :bucketlist_locations
  resources :sessions, only: [:new, :create, :destroy]
  get '/about', to: 'static#about', as: 'about'
  resources :dark_sky_parks, only: [:index,:show] do
    resources :likes, only: [:create, :destroy]
  end
  # post '/about', to: 'static#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
