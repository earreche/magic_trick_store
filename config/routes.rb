# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated do
      root to: 'tricks#index'
    end
  end

  namespace :admin do
    resources :tricks
    resources :trick_categories
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
