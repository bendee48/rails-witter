Rails.application.routes.draw do
  devise_for :users
  resources :weets
  root 'weets#index'
end
