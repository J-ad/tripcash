Rails.application.routes.draw do
  devise_for :users
  root 'homepage#index'

  resources :trips do
    resources :members do
      resources :expences
    end
    resources :raports
  end
end
