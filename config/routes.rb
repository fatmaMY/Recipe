Rails.application.routes.draw do
	# delete 'admin/categories/:id', to: 'admin/categories#destroy', as: 'destroy_admin_category'
  namespace :admin do
		resources :categories, :food_recipes
	end

	get 'admin', to: 'admin#control_panel'

	root 'application#home'
	get 'about', to:'application#about'
	get 'secrets', to: 'application#secrets'
	# get 'admin', to: 'admin#control_panel'
  resources :users
  resources :categories, except: [:destroy]
  resources :food_recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 

end
