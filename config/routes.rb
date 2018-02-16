Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get 'about/index'
  get 'autoservices' => 'autoservices#new'
  resource :autoservices, only: [:create]
  resource :cars, only: [:new, :create], path_names: {:new => ''}
  resources :services, :brands



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
