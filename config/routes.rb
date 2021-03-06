Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "comics/dc", to: "comics#indexdc"
  get "comics/marvel", to: "comics#indexmarvel"
  get "comics/valiant", to: "comics#indexvaliant"
  get "comics/other", to: "comics#indexother"
  resources :comics
end
