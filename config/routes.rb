Rails.application.routes.draw do
  root 'application#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :auths
  resources :categories
end
