Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :resources
  resources :bookings
  resource :home

  root 'home#index'
end
