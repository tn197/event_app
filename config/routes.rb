Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/index'
  resources:events
  resources :shared_events, only: [:edit, :show, :update],  param: :uuid
  get 'shared_events/attendance', param: :uuid
  
  # /events/1/guests/new
  # params[:event_id]
  resources :events do
    resources :guests, only: [:new, :create]
  end
end
