Rails.application.routes.draw do
  root to: "users#new"
  resources :profiles, only: [:index]
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
end
