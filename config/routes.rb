Rails.application.routes.draw do
  get 'home/index'
  resources :contact_form, only: %i[new create]
  get 'up' => 'rails/healh#show', as: :rails_health_check

  # Defines the root path route ("/")
  root 'home#index'
end
