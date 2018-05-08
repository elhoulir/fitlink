Rails.application.routes.draw do
  root 'pages#home'
  
  resources :gyms do
    resources :gym_sessions 
  end
  
  devise_for :users
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
