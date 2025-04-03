Rails.application.routes.draw do
  root "page#home"
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  get "users/:id", to: "users#show", as: "show_user"
  resources :posts, except: [:index]
end

