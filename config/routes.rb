Rails.application.routes.draw do
  root 'predictions#new'
  resources :predictions
end
