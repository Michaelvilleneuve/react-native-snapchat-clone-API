Rails.application.routes.draw do
  
  resources :snaps
  resources :users, only: [:index, :show]

  mount_devise_token_auth_for 'User', at: 'auth'
  
end
