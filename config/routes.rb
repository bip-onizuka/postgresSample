Rails.application.routes.draw do
  resources :forherokus
  resources :users
  root 'users#index'
end
