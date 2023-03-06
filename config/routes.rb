Rails.application.routes.draw do
  get 'registrations/create'
  get 'sessions/create'
  devise_for :users
  scope defaults: { format: :json } do 
    root to: 'status#index'
    resources :sessions, only: :create
    resources :registrations, only: :create
    resources :role_types, only: [:index]
    resources :jobs, only: [:index, :show]
  end
end
