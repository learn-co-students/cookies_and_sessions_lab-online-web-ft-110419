Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/products/add', to: 'products#add', as: 'add'
  
  root 'products#index'
end
