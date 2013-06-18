House::Application.routes.draw do

=begin
  namespace :api do
    resources :adverts do
      resources :advert_images
    end
  end
=end

  devise_for :users

  root :to => 'adverts#index'


  resources :adverts



end
