Rails.application.routes.draw do
  root to: "airplanes#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :airplanes, only: [:index, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end
