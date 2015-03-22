Rails.application.routes.draw do
  root("dashboards#show")
  resource :dashboard, only: [:show]
  resources :businesses
  resources :products
  resources :plans
  resources :features
  resources :cost_structures
  resources :plan_features
  resources :product_features
end
