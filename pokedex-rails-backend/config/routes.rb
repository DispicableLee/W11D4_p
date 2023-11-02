Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: {format: :json} do 
    get "/pokemon/types", to: "pokemon#types", as: "pokemon_types"
    resources :pokemon, only: [:show, :update, :create, :index]
    resources :items, only: [:index, :create, :update, :destroy]
  end
end
