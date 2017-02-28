Rails.application.routes.draw do
  devise_for :users
  resources :messages
  root 'messages#index'
  get "*path", to: redirect('/')
end
