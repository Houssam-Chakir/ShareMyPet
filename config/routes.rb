Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  root to: "animals#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :animals do
    resources :bookings
    resources :reviews, only: :create
  end
  resources :bookings, only: :destroy
  resources :reviews, only: :destroy
end
