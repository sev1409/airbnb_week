Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show]

  root to: 'pages#home'
  resources :puppies do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create, :show]
  end

  resources :bookings, only: [:show, :edit]

  mount Attachinary::Engine => "/attachinary"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
