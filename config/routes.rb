Rails.application.routes.draw do

  root 'home#top'
  get 'contribute' => 'home#contribute'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :contributions
end
