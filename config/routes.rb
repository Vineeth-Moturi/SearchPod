Rails.application.routes.draw do
  resources :articles
  resources :todo_lists

  resources :users, shallow:true do
    resources :todo_lists
  end
  get 'dashboard/Account'
  get 'dashboard/ToDos'
  get 'dashboard/Articles'
  get 'dashboard/Products'
  get '/dashboard/logout', to:"dashboard#logout"

  get 'dashboard/home'
  root 'main#home'
  get 'main/home'
  get 'main/signup'
  get 'main/login'
  post 'main/signup', to: 'main#signup_new'
  post 'main/login', to: 'main#login_validate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
