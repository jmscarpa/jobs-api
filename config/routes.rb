Rails.application.routes.draw do
  get 'status/index'
  scope defaults: { format: :json } do 
    root to: 'status#index'
  end
end
