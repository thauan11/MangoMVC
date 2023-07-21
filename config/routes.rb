Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "mangos#index"

  # get 'mangos', to: 'mangos#index'
  # get 'mangos/:id', to: 'mangos#show'
  # get 'mangos/adicionar', to: 'mangos#new'
  # post 'mangos', to: 'mangos#create'

  resources :mangos
end
