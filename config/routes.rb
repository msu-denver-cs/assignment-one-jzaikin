Rails.application.routes.draw do
  resources :makes
  resources :parts
  resources :cars
  resources :car_makes
  resources :car_parts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
