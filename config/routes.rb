Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :movies

  resources :movies do
    resources :reviews
  end

  resources :movies do
    resources :favorites, only: %i[create destroy]
  end

  resources :genres, only: %i[show]

  get 'user/:id' => 'users#show', as: :user

  root 'movies#index'
end
