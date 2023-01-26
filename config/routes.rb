Rails.application.routes.draw do
  resources :pruebas
  resources :nombre_modelos
  get 'users/top_users'
  get 'users/followers_summary'
  resources :users, only: [:index, :show, :new, :update] do
    member do
      patch 'follow'
      patch 'unfollow'
      get 'users/:id', to: 'users#show', as: 'user'

    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
