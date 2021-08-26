Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :profile, only: [:update, :edit]

  get '/organizations/curated', to: 'organizations#curated'
  get '/organizations/:id', to: 'organizations#show'
  get '/organizations/:id/contact', to: 'organizations#contact'
end
