Rails.application.routes.draw do
  root "page#home"
  devise_for :users, :controllers => { registrations: 'users/registrations' }
end
