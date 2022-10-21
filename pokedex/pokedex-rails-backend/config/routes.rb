Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/api/pokemon/types", to: "api/pokemon#types", defaults: { format: :json }
  get "/api/pokemon/:pokemon_id/items", as: "api_pokemon_items", to: "api/items#index", defaults: { format: :json }
  post "/api/pokemon/:pokemon_id/items", to: "api/items#create", defaults: { format: :json }

  namespace :api, defaults: { format: :json } do 
    resources :items, only: [:update, :destroy]
    resources :pokemon, only: [:index, :create, :show, :update], shallow: true
    # resource :pokemon, only: [:show] do
    #   resource :items, only: [:index, :create]
    # end
  end
end
