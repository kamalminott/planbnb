Rails.application.routes.draw do
  devise_for :users
  root to: "planets#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 resources :planets
 get 'bookings', to: 'bookings#my_bookings'
 get 'planets/:id/new', to: 'bookings#new', as: 'new_booking'
 post 'bookings', to: 'bookings#create'

  # Defines the root path route ("/")
  # root "articles#index"
end
