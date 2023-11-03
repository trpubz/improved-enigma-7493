Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :dishes, only: [:show] do
    resources :ingredients, controller: "dish_ingredients", only: [:create, :destroy]
  end

  resources :chefs, only: [:show] do
    resources :ingredients, controller: "chef_ingredients", only: [:index]
  end
end
