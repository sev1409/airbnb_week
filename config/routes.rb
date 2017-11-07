Rails.application.routes.draw do
  get 'reviews/show'

  get 'reviews/create'

  get 'bookings/show'

  get 'bookings/create'

  get 'bookings/update'

  get 'puppies/index'

  get 'puppies/show'

  get 'puppies/new'

  get 'puppies/create'

  get 'puppies/edit'

  get 'puppies/update'

  get 'puppies/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  devise_for :users
  root to: 'pages#home'
  resources :puppies do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create, :show]
  end

  resources :bookings, only: [:show, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
