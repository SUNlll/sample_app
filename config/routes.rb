Rails.application.routes.draw do



  resources :users

  root to:'static_pages#home'
  # match '/', to: 'static_pages#home', via:get

  # get 'users/new'
  match '/signup', to:'users#new', via:'get'

  match '/help', to: 'static_pages#help',via:get

  get 'static_pages/about'

  # match '/about',to:'static_pages#about',via:about

  match '/contact', to: 'static_pages#contact',via:get



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
