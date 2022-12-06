Rails.application.routes.draw do
  devise_for :users
  root to: "road_trips#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :road_trips, only: [:index, :show, :new, :create, :edit, :update] do
    resources :points, only: [:new, :create]
  end
  get "/profile", to: "pages#profile", as: :profile # correspond à la show du current_user, le path : profile_path
  # get "/road_trips/search", to: "road_trips#search", as: :search # le path : search_path
  post "/participations/:id/validate", to: "participations#validate", as: :validate # le path : validate_path
  get "/road_trips/:id/details", to: "road_trips#show_details", as: :your_road_trip
  # Defines the root path route ("/")
  # root "articles#index"
  get "/road_trips/:road_trip_id/participations", to: "participations#create", as: :road_trip_participations

  resources :participations, only: :destroy do
    member do
      patch "accept"
    end
  end
end
