Rails.application.routes.draw do
  resources :portfolios, except: [:show]
    #changing the route to ex: 'portfolio/5' -----> as: changes the prefix of the route in rake routes, change can be found in index file
    get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
 
 root to: 'pages#home'
 end
