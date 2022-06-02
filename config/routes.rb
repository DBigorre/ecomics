Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :comics
  get "comics/dc", to: "comics#indexdc"
  get "comics/marvel", to: "comics#indexmarvel"
  get "comics/valiant", to: "comics#indexvaliant"
  get "comics/other", to: "comics#indexother"
end
