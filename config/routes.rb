Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
  end

  resources :users, :routes, :favorites, :stop_requests
  root to: 'visitors#index'
end
