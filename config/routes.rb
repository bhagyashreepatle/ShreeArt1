Rails.application.routes.draw do
  resources :carts
  get 'arttable/add'
  get 'arttable/delete'
  get 'arttable/new'
  
  get 'arttable/update'

  get 'arttable/delete'
  get 'arttable/edit'
  get 'arttable/list'
  get 'arttable/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'
  resources :users


  
get 'home/index'
root 'home#index'
resources :users
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome', to: 'sessions#welcome', as: 'welcome'

get "/sessions", to: "sessions#welcome"
match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
