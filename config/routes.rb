Rails.application.routes.draw do
  devise_for :users
  resources :videos
  resources :photos
  resources :statics, only: [:index]
  resources :contacts, only: [:index, :create]

  root "statics#index"
end
