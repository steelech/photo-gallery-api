Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#main'  
  get '/login', to: 'login#show'
  get '/codes', to: 'code#index'
  post '/token', to: 'token#show'
  get '/albums', to: 'albums#index'
  get '/pictures', to: 'pictures#index'

end
