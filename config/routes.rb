Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  
  root 'entertainment_venues#index'
  
  resources :entertainment_venues
  resources :categories

  get '/user/accept' => 'acceptions#accept', as: 'accept'
  get '/user/reject' => 'acceptions#reject', as: 'reject'

end
