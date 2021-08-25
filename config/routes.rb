Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/organizations/curated', to: 'organizations#curated'
  get '/organizations/:id', to: 'organizations#show'
end
