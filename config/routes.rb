Rails.application.routes.draw do
  # resources: :sessions, only: [:new, :create, :destroy]
  resources :visitors
  resources :comments
  resources :reviews
  resources :dark_sky_parks
  resources :bucketlist_locations
  resources :sessions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
