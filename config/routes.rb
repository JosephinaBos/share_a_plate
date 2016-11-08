Rails.application.routes.draw do

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
