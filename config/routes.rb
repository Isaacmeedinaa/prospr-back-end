Rails.application.routes.draw do
  resources :recommendation_comments
  resources :payment_methods
  resources :likes
  resources :prosp_comments
  resources :recommendation_comments
  resources :recommendation_images
  resources :prosp_images
  resources :recommendations
  resources :prosps
  resources :pros
  resources :browsers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
