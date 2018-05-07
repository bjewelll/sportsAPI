Rails.application.routes.draw do
  post 'baseball/player'
  post 'baseball/team'
  resources :favorites, :baseball
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
  get 'users/:id', to: 'users#show'
end
