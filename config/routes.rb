Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'baseball/index'
  get 'baseball/show'
  resources :favorites
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
end
