Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :chatrooms, only: %i[show] do
    resources :answers, only: %i[create]
    resources :bookings, only: %i[index]
  end

  resources :wines, only: %i[] do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: %i[destroy]

  namespace :caviste do
    resources :offers, only: %i[index show create new edit update destroy]
  end
end
