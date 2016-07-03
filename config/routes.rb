Rails.application.routes.draw do
  devise_for :users
  root 'trips#index'

  resources :trips do
    resources :members do
      resources :expences
    end
    resources :raports, only: :show
  end
end
