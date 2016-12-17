Rails.application.routes.draw do
  devise_for :users
  
  root 'entertainment_venues#index'
  
  resources :entertainment_venues
  resources :categories

end
