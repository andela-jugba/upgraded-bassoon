Rails.application.routes.draw do

  resources :answers
  resources :questions
  root 'home#index'

  get '/about' => 'home#about'
  get :version, controller: 'home', action: 'version'
  get :ping, controller: 'home', action: 'ping'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
