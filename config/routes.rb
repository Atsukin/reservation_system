Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :blocks
      resources :courses
      root to: "users#index"
    end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
