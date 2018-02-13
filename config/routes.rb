Rails.application.routes.draw do
  get 'home/index'
  get 'about/index'
  resources :services
  root 'home#index'
  get 'services' => 'pages#services'
  get 'admin' => 'pages#admin'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
