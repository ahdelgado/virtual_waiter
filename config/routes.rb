# frozen_string_literal: true

Rails.application.routes.draw do
  resources :items, only: %i[destroy create update]
  resources :restaurants
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
