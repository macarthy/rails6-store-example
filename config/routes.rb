Rails.application.routes.draw do
  devise_for :admins
  root 'home#index'

  mount API::Base, at: '/'

  namespace :admin do
    resource :dashboard
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
