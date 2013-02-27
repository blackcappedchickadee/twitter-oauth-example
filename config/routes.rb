App::Application.routes.draw do
  resources :cheep

  get "cheep/index"

  root :to => 'cheep#index'
  
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
    
end
