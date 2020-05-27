Rails.application.routes.draw do
  resources :weets
  root 'weets#index'
end
