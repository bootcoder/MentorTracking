Rails.application.routes.draw do

  root 'mentors#index'

  resources :mentors
  resources :admins
  resources :departments
  resources :locations
  resources :notes
  resources :shifts
  resources :employments

  get '/auth/:provider/callback', to: 'sessions#create'

end
