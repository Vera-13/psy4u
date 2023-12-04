Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :doctors, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :bookings, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/dashboard", to: "pages#dashboard", as: :dashboard

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  get "depression", to: "pages#depression", as: :depression
  get "anxiety", to: "pages#anxiety", as: :anxiety
  get "ocd", to: "pages#ocd", as: :ocd
  get "trauma", to: "pages#trauma", as: :trauma
  get "ptsd", to: "pages#ptsd", as: :ptsd
  get "adhd", to: "pages#adhd", as: :adhd
  get "eatingdisorders", to: "pages#eatingdisorders", as: :eatingdisorders
  get "coupletherapy", to: "pages#coupletherapy", as: :coupletherapy
end
