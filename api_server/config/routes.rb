Rails.application.routes.draw do
  resources :about, only: :index
  root 'home#index'
end
