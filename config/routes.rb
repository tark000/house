House::Application.routes.draw do



  namespace :api do
    resources :adverts
  end

  devise_for :users

  resources :users do
    resources :adverts
  end

  root :to => 'home#index'
  match '/' => 'home#index'
  match '/adverts' => 'home#index'
  match '/adverts/*page' => 'home#index'

  #resources :adverts

  get "contact_us/new"
  post "contact_us/send_email", :as => "send_email"

  match "/search" , :to=>"api/adverts#index"


end
