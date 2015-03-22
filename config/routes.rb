Rails.application.routes.draw do
  root("businesses#index")
  resource :dashboard, only: [:show]
  resources :businesses
  resources :products
  resources :plans
  resources :features
  resources :cost_structures
  resources :plan_features
  resources :product_features
end
