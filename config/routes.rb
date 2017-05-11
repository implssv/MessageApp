Rails.application.routes.draw do
  devise_for :users
  resources :messages do
    resources :comments
  end
  resources :categories
  root 'messages#index'
  category_new_path 'categories#create'
  get "*path", to: redirect('/')
end
