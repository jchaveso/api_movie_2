Rails.application.routes.draw do
  get 'cinema/movies'
  get 'cinema/bookings'
  root 'home#index'
  get ':page' => 'stack#show', as: 'stack'

  resources :movies
  resources :users
  resources :bookings

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
