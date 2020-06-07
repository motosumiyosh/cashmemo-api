# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post 'signin', to: 'session#create'
      delete 'signout', to: 'session#destroy'
      post 'signup', to: 'users#create'

      resource :transactions, only: %i[index create show update destroy]
    end
  end
end
