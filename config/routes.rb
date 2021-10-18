Rails.application.routes.draw do
  root 'main#home'
  get 'main/home'
  get 'main/signup'
  get 'main/login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
