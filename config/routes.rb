Rails.application.routes.draw do
  get 'participations/validate'
  get 'road_trips/index'
  get 'road_trips/show'
  get 'road_trips/new'
  get 'road_trips/create'
  get 'road_trips/edit'
  get 'road_trips/update'
  devise_for :users
  root to: "road_trips#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :road_trips, only: [:index, :show, :new, :create, :edit, :update]
  get "/profile", to: "pages#profile", as: :profile # correspond à la show du current_user, le path : profile_path
  get "/road_trips/search", to: "road_trips#search", as: :search # le path : search_path
  post "/participations/:id/validate", to: "participations#validate", as: :validate # le path : validate_path
  # Defines the root path route ("/")
  # root "articles#index"
end
