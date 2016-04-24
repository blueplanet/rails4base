Rails.application.routes.draw do
  devise_for :users

  resources :bootstrap_forms
  resources :simple_forms
  root 'home#show'
end
