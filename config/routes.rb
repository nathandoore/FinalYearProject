Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'homes#index'

  get 'cars/index', to: 'cars#index'

  get 'cars/new', to: 'cars#new'

  get 'cars/users', to: 'cars#users'

   get 'cars/listing', to: 'cars#listing'

  get 'cars/history', to: 'cars#history'

  get 'cars/rent', to: 'cars#rent'
    post 'cars/rent', to: 'cars#rent'


  post 'cars/:id', to: 'cars#show'

  get 'cars/rented', to: 'cars#rented'
  get 'cars/accept', to: 'cars#accept'

  get 'cars/deactive', to: 'cars#deactive'
   get 'cars/reactivate', to: 'cars#reactivate'

  get 'cars/offhire', to: 'cars#offhire'

  get 'cars/rentpage', to: 'cars#rentpage'
    post 'cars/rentpage', to: 'cars#rentpage'

  get 'homes/aboutus', to: 'homes#aboutus'

   get 'histories/listing', to: 'histories#listing'


  

  get 'histories/new', to: 'histories#new'
  get 'users/show', to: 'users#show'
  
  get 'signup', to: 'users#new'
 

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'


  post  'reviews/new/:id', to: 'reviews#new'
  get   'reviews/new/:id', to: 'reviews#new'
  post  'reviews/displays/:id', to: 'reviews#displays'
  get   'reviews/displays/:id', to: 'reviews#displays'

    resources :reviews
    resources :cars
    resources :histories
 resources :users, except: [:new]
end
