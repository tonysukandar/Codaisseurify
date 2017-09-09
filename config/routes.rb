Rails.application.routes.draw do
  root to: 'pages#home'

  resources :artists, only: [:show]
  resources :songs, except: [:update]
end
