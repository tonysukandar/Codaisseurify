Rails.application.routes.draw do
  root to: 'artists#index'

  resources :artists do
    resources :songs
  end

  namespace :api do
    resources :artists
  end

end
