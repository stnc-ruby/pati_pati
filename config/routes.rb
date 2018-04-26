Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get '/users', to: 'users#index'
  get '/users/:user_id', to: 'users#show'
  post '/users', to: 'users#create'
end
