Rails.application.routes.draw do
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: {format: :json} do 
    resources :pokemon, only: [:show, :update, :create, :index]
    get "/pokemon/types", :to => "pokemon#types", :as => "pokemon_types"
    resources :items, only: [:index, :create, :update, :destroy]
  end
end
