Rails.application.routes.draw do

  root 'pages#home'

  # Devise
  devise_for :users

  # Resources
  resources :projects do
    resources :contacts
  end

end
