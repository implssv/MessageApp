Rails.application.routes.draw do
  devise_for :users
  resources :messages do
    resources :comments
  end
  resources :categories
  root 'messages#index'

  get "*path", to: redirect('/')
end
