RailsSignupDownload::Application.routes.draw do
  root :to => "home#index"
  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
