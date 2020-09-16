# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  resources :items, only: %i[destroy create update]
  resources :restaurants
  resources :clients
  root to: 'clients#index'

  get '/temp', to: 'api#temp'

  get '/restaurant', to: 'api#restaurant'

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users, controllers: { omniauth_callbacks: 'devise/omniauth_callbacks' }
end
