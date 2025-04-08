Rails.application.routes.draw do
  root "page#home"
  get "bookmarks/", to: "page#bookmark"
  get "bookmarks/category", to: "page#bookmark_category"
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  get "users/:id", to: "users#show", as: "show_user"
  resources :posts, except: [:index] do
    collection do
      get "category"
      get "search"
    end
  end
  resources :bookmarks
  resources :comments
  resources :likes
end

