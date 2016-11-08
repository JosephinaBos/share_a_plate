Rails.application.routes.draw do

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  devise_for :users

  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'

  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/edit'
  get 'reviews/update'
  get 'reviews/destroy'

  root to: 'pages#home'
end
