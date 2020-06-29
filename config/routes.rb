Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/index'
  resources:events
  resources :shared_events, only: [:edit, :show, :update],  param: :uuid
  get 'shared_events/attrndance'
  
  resources :events do
  get 'guests/new'
  get 'guests/create'
  end
end
