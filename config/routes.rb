Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/myprofile', to: 'users#myprofile'
  get '/myprofile/experiences/new', to: 'resumes#new'
  post '/myprofile/experiences', to: 'resumes#create'
  get '/events/:event_id/new', to: 'bookings#new'
  post '/events/:event_id', to: 'bookings#create'
  get '/chefs/:chef_id/review/new', to: 'reviews#new'
  post '/chefs/:chef_id/review', to: 'reviews#create'

  resources :events do
    # resources :bookings, only: [:new, :create]
  end


  resources :users, only: [:index, :show], path: :chefs, as: :chefs, controller: :chefs do
    member do
      post :follow
      post :unfollow
    end
  end
end
