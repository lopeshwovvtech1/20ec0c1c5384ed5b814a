Rails.application.routes.draw do
  devise_for :users
  root to: "shows#index"
  resources :shows
  resources :channels
  resources :users do 
    collection do
	    post :add_to_favorite_show
  	end
  end	
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
