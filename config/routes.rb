Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  get 'about/index'
  # resource :autoservices, only: [:create]
  # resource :cars, only: [:new, :create], path_names: {:new => ''}
  resources  :services, :brands, :cars, :autoservices



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
