Rails.application.routes.draw do
  patch 'update_theme', to: 'themes#update'
  resources :projects
  devise_for :admins
  resources :contact_forms
  get 'home/index', controller: 'home', action: 'index'
  get 'up' => 'rails/healh#show', as: :rails_health_check

  # Defines the root path route ("/")
  root 'home#index'
end
