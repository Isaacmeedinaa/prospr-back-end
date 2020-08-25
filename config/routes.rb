Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
