Rails.application.routes.draw do
  resources :contact_forms
  get 'home/index'
  get 'up' => 'rails/healh#show', as: :rails_health_check

  # Defines the root path route ("/")
  root 'home#index'
end
