Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      # post "/register", to: "auth#register"

      post "/register", to: "auth#register"
      post "/login", to: "auth#login"
      
      get "/profile", to: "api/v1/users#profile"

  namespace :api do 
    namespace :v1 do 
      resources :locations
      resources :comments
      resources :users  
      resources :favourites

      # get '/register', to: 'users#index'

      

    end
  end
end
