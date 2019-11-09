Rails.application.routes.draw do
  devise_for :admins
  namespace :admin do
    resources :blocks
    resources :bookings, only: %i(show index edit)
  end
  resources :bookings, only: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
