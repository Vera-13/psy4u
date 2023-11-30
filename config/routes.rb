Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :doctors, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  resources :reviews, only: [:new, :create, :destroy]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
