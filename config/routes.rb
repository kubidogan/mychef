Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/myprofile', to: 'users#myprofile'
  get '/myprofile/experiences/new', to: 'resumes#new'
  post '/myprofile/experiences', to: 'resumes#create'
  get '/events/:event_id/new', to: 'bookings#new'
  post '/events/:event_id', to: 'bookings#create'
  get '/chefs/:chef_id/reviews/new', to: 'reviews#new', as: :new_review
  post '/chefs/:chef_id/reviews', to: 'reviews#create', as: :chef_reviews
  get '/events/:event_id/bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: "booking_confirmation"

  resources :events do
    resources :bookings, only: [:new, :create]
  end
  resources :posts, only: [:index, :new, :create, :destroy]

  resources :users, only: [:index, :show], path: :chefs, as: :chefs, controller: :chefs do
    member do
      post :follow
      post :unfollow
    end
  end
end
