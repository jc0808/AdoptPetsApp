Rails.application.routes.draw do
  
  resources :shelters, only: [:index]
  resources :pets, only: [:update]
  resources :adopters, only: [:index, :destroy]
  resources :credentials, only: [:index]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  post "/login", to: "sessions#create"
  get "/auth", to: "users#show"
  post "/users", to: "users#create"
  patch "/password", to: "users#update"
  delete "/logout", to: "sessions#destroy"
  patch "/giveback", to: "pets#back"
end
