Rails.application.routes.draw do
  root 'main#home'
  get 'main/home'
  get 'main/signup'
  get 'main/login'
  post 'main/signup', to: 'main#signup_new'
  post 'main/login', to: 'main#login_validate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
