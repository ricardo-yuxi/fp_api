Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api do
    resources :orders
    post :pusher_prueba, to: 'orders#pusher_prueba'
    post :end_session_stock, to: 'orders#end_session_stock'

  end
end
