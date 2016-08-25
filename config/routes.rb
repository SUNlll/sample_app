Rails.application.routes.draw do



  resources :users do
    member do
      get :following,:followers
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  root to:'static_pages#home'
  # match '/', to: 'static_pages#home', via:get
# get 'users/signin'
  # get 'users/new'
  match '/signup', to:'users#new', via:'get'
  match '/signin', to:'users#new', via:'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  match '/help', to: 'static_pages#help',via:get

  get 'static_pages/about'

  # match '/about',to:'static_pages#about',via:about

  match '/contact', to: 'static_pages#contact',via:get



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
