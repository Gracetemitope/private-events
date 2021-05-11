Rails.application.routes.draw do
  resources :privates
  devise_for :users
  resources :users, :only => [:show]

  root to: "privates#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end