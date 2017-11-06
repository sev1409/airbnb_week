Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :puppies do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create, :show]
  end

  resources :bookings, only: [:show, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
