require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  mount Sidekiq::Web => '/sidekiq'

  root to: "home#index"
end
