# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
      resources :posts
      resources :authors
      resources :books

      root to: "posts#index"
    end

  root to: redirect('/admin')
end
