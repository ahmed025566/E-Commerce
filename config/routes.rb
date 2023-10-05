# frozen_string_literal: true

Rails.application.routes.draw do
  resources :registrations, only: [:create]
  resources :sessions, only: [:create]
  get :logged_in, to: 'sessions#logged_in'
  delete :log_out, to: 'sessions#log_out'
end
