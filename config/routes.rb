Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  get "/milkshakes", to: "milkshakes#index", as: "milkshakes"
  post "/milkshakes", to: "milkshakes#create"
  get "/milkshakes/new", to: "milkshakes#new", as: "new_milkshake"
  get "/milkshakes/:id", to: "milkshakes#show", as: "milkshake"
end
