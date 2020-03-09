Rails.application.routes.draw do
  resources :customers
  resources :orders_facts
  resources :employees
  resources :products
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
