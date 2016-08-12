Rails.application.routes.draw do

  resources :blogs

  resources :users do
		collection do
			get :sign_in
			#get :sign_up
			
			post :sign_in_process
			
			delete :sign_out
		end
	end
	root "home#index"
	resources :about, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
