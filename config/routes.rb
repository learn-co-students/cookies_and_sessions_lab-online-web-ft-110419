Rails.application.routes.draw do
  # get 'products/index' => 'pro'

  # get 'products/add'
  resources :products, only: [:index, :add]
  post '/' => 'products#add'
  root to: 'products#add'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
