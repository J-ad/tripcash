Rails.application.routes.draw do
  # resources :expences
  # resources :members
  resources :trips
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#index'

  resources :trips do
    resources :members
    resources :expences
  end
end
