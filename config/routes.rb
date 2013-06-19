House::Application.routes.draw do

  namespace :api do
    resources :adverts do
      resources :advert_images
    end
  end

  devise_for :users

  root :to => 'adverts#index'


  resources :adverts



end
