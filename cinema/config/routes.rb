Rails.application.routes.draw do
  get 'report/listing'
  get 'report/bookings'
  resources :users
  resources :movies do
    resources :showtimes
    resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
