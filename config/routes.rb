Rails.application.routes.draw do
  devise_for :users
  root to: 'nouvelles#index'
  resources :nouvelles, except: [:edit, :update]
  get "about", to: "pages#about"
  get "info", to: "pages#info"
  get "media", to: "pages#media"
  get "enseignement", to: "pages#enseignement"
  get "bibliographie", to: "pages#bibliographie"
  get "articles", to: "pages#articles"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
