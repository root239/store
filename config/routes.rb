Rails.application.routes.draw do
  
  devise_for :users
  root'searches#new'
  
  resources:posts do
    resources:comments
  end
  resources:searches
  resources:stores
  
  get '/about', to: 'pages#about'
  get '/label', to: 'pages#label'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
