Rails.application.routes.draw do
  
  root'stores#index'
  
  resources:searches
  resources:stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
