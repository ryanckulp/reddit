Rails.application.routes.draw do

  resources :predictions
  devise_for :users
  root 'pages#home'

end
