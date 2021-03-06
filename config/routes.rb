Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :projects
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
