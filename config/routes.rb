Rails.application.routes.draw do

  root "home#index"

  resources :genres
  resources :movies

end
