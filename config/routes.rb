Rails.application.routes.draw do
  resources :visitors
  # resources :orders, except: [:index, :show]
  resources :items
  resources :profiles

  # Example manually defining routes for custom names and helpers
  get "orders", to: "orders#index"
  get "/orders/:id", to: "orders#show", as: "order"
  get "/feedback/:id/edit", to: "orders#edit", as: "edit_order"
  # edit_order_path
  resources :charges





  # Add devise registrations controller to allow after sign up path
  devise_for :users, controllers: { registrations: "registrations" }
  root "home#index"
  get 'home/index'

  # Add about page route
  get "about", to: "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
