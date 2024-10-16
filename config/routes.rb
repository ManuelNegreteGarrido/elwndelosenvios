Rails.application.routes.draw do
  resources :envios
  resources :retiros, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
