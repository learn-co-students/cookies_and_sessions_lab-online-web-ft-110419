Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :application do 
  #   resources :products, only: [:index, :add]
  # end
  root 'products#index'
  post 'add', to: 'products#add'
end
