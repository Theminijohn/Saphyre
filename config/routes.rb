Rails.application.routes.draw do

  authenticated :user do
    root 'pages#home', as: :authenticated_root
  end

  unauthenticated do
    root 'pages#index'
  end

  # Devise
  devise_for :users, path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'register' },
    controllers: { 
      registrations: 'registrations'
    }

  # Resources
  resources :projects do
    resources :contacts
  end

end
