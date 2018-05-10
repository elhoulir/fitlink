Rails.application.routes.draw do


  get '/profile', to: 'profile#show'
  patch '/profile', to: 'profile#update'
  get '/profile/edit', to: 'profile#edit'


  root 'pages#home'
  


  resources :gyms do
  
    resources :gym_sessions, only: [:create, :new] do 
      member do 
        post :book
      end
    end
  end
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
