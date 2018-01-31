Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/profile", to: "pages#profile", as: :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :rentals, only: [ :index, :show ]

  get '/rentals/:id/return', to: "rentals#return", as: :rental_return

  resources :games do
    resources :rentals, only: [ :new, :create ]
  end
end
