Rails.application.routes.draw do

  resources :contacts

  resources :projects

  root 'pages#home'

  # Devise
  devise_for :users

end
