Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show] do
    resources :bookings, only: [:index]
  end

  root to: 'pages#home'
  resources :puppies do
    resources :bookings, only: [:create, :update, :destroy]
    resources :reviews, only: [:create, :show]
  end



  mount Attachinary::Engine => "/attachinary"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
