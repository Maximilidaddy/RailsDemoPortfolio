Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
    #changing the route to ex: 'portfolio/5' -----> as: changes the prefix of the route in rake routes, change can be found in index file
    
    get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
    get 'angular-items', to: 'portfolios#angular'
  #changing route to just about and contact
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do  
    member do 
      get :toggle_status
    end
  end
 
 root to: 'pages#home'
 end
