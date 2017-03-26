Rails.application.routes.draw do
  
  root'posts#index'
  
  resources:posts do
    resources:comments
  end
  resources:searches
  resources:stores
  
  get '/about', to: 'pages#about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
