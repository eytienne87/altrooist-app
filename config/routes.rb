Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :profile, only: [:show, :update, :edit]

  get '/organizations/curated', to: 'organizations#curated', as: :curated
  get '/organizations/:id', to: 'organizations#show', as: :organization
  get '/organizations/:id/contact', to: 'organizations#contact', as: :organization_contact
  get '/my_organizations', to: 'organizations#my_organizations'
  resources :organizations, only: [] do
    resources :journal_entries, only: [:new, :create, :index]
  end
end
