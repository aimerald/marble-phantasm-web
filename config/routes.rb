Rails.application.routes.draw do
<<<<<<< HEAD
  get 'about/index'

=======
  resources :blogs
>>>>>>> 722f5593c458f0e2566352c3de6de9d30c68ac0a
	root "home#index"
	resources :about, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
