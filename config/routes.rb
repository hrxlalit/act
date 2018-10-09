Rails.application.routes.draw do
  	mount ActionCable.server, at: '/cable'
	resources :saini 
	resources :lalit 
	namespace :api do
		namespace :v1 do
   			resources :users
  		end
 	end
	resources :fan 
	resources :tap 
	resources :rat 
	resources :lap 
	resources :desk 
	resources :desk 
	resources :hat 
	resources :bag 
	resources :balls 
	resources :bats 
	resources :products 
	resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
