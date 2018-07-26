Rails.application.routes.draw do
  # get 'cocktails/show'
  # get 'cocktails/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
  		resources :doses, except: [ :show, :destroy]
  	end
  	resources :doses, only: [ :index, :destroy]
end
