Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  
  root 'entertainment_venues#index'
  
  resources :categories
  
  resources :entertainment_venues do
    resources :reviews
    resources :images
  end

  get '/user/accept' => 'acceptions#accept', as: 'accept'
  get '/user/reject' => 'acceptions#reject', as: 'reject'

end
