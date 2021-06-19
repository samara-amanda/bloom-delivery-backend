Rails.application.routes.draw do
  
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
