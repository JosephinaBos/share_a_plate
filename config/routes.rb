Rails.application.routes.draw do

  resources :events do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
  end

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :reviews, only: [:new, :create, :edit, :update, :destroy]

  root to: 'pages#home'
end
