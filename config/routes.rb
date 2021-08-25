Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  get 'profile/edit', to: 'profiles#edit'
  patch 'profile', to: 'profiles#update'
=======
  get '/organizations/curated', to: 'organizations#curated'
>>>>>>> master
end
