Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activities, only: [ :index, :show ] do
    resources :events, only: [ :create ]
  end
  resources :events, only: [ :update, :destroy ]
  resources :calendars, only: [ :show, :create ]
  resources :wish_lists, only: [:create, :show, :update]
end
