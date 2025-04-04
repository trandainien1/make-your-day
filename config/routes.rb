Rails.application.routes.draw do
  root "page#home"
  get "bookmarks/", to: "page#bookmark"
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  get "users/:id", to: "users#show", as: "show_user"
  resources :posts, except: [:index]
  resources :bookmarks
  resources :comments
end

