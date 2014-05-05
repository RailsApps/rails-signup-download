Rails.application.routes.draw do
  root :to => "visitors#index"
  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
