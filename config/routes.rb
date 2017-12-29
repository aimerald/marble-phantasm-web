Rails.application.routes.draw do

  resources :searches, expect: [:new,:edit] do
    collection do
      post :result
    end
  end

  resources :blogs
	root "home#index"
	resources :about, only: :index
end
