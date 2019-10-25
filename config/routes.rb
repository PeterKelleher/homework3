Rails.application.routes.draw do
  resources :appointments
  resources :patients
  resources :offices
  resources :physicians
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'physicians#index'
end
