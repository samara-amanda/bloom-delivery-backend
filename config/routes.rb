Rails.application.routes.draw do
  post "/api/v1/login", :to => "api/v1/sessions#create"
  get "/api/v1/get_current_user", :to => "api/v1/sessions#get_current_user"


  namespace :api do 
    namespace :v1 do 
      resources :carts
      resources :orders
      resources :items
      #resources :users
      

      resources :users do
        resources :reviews
        resources :orders do
          resources :items
        end
      end

      resources :items do
        resources :reviews
      end



    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
