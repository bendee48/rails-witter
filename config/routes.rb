Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :weets
  root 'weets#index'
end
