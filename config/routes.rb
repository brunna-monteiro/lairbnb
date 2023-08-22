Rails.application.routes.draw do
  devise_for :users
  root to: "lairs#index"
  resources :lairs, only: [:show] do
    resources :reservations, only: %i[new create]
  end
  resources :reservations, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
