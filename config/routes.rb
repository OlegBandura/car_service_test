Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'home/index'
  get 'about/index'

  resources :services
  # resource :cars, only: [:new, :create], path_names: {:new => ''}

  namespace :admin do
    resources :brands, :cars, :autoservices, :users, :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
