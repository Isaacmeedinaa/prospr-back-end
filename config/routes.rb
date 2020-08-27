Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # auth
      post '/browser_login', to: 'auth#browser_login'
      post '/pro_login', to: 'auth#pro_login'
      get '/browser_auto_login', to: 'auth#browser_auto_login'
      get '/pro_auto_login', to: 'auth#pro_auto_login'

      # register
      post '/browser_register', to: 'browsers#register'
      
      resources :pros
      resources :browsers
      resources :payment_methods
      resources :prosps
      resources :prosp_likes
      resources :prosp_comments
      resources :prosp_images
      resources :recommendations
      resources :recommendation_likes
      resources :recommendation_comments
      resources :recommendation_images      
    end
  end

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
