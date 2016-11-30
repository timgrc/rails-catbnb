Rails.application.routes.draw do
  devise_for :cats
  root to: 'pages#home'

  resources :houses, only: [:index, :show] do
    resources :reservations, only: [:new, :create]
    post '/reservations/booking', to: 'reservations#booking'
  end

  resources :cats, only: [:show]

  resources :profile, only: [:edit, :update]

  namespace :owner do
    resources :houses,       only: [:index, :new, :create, :edit, :update, :destroy]
    resources :reservations, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end

  namespace :traveler do
    resources :reservations, only: [:index] do
      member do
        get :confirmation
      end
    end
  end

  # Static pages
  get 'about_us', to: "pages#about_us"
end
