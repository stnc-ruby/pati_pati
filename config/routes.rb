Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/users',               to: 'users#index'
      get '/users/:id',           to: 'users#show'
      post '/users',              to: 'users#create'
      delete '/users/:id',        to: 'users#destroy'

      post '/announcements/:user_id', to: 'announcements#create'
      get '/announcements', to: 'announcements#index'   # TO DO: filtreli announcement
      get '/announcements/:id', to: 'announcements#show'
      delete '/announcements/:id', to:'announcements#destroy'
      post '/announcements/:id/make_done/:user_id', to: 'announcements#make_done'
      post '/announcements/:id/assing_to/:user_id', to: 'announcements#assign_user_to_announcement'
      get '/announcements/:id/by_status/:status_type', to: 'announcements#get_all_by_status_type'
    end
  end
end
