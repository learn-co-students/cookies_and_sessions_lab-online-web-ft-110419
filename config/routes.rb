Rails.application.routes.draw do
  root 'products#index'
  get '/products/add', to: 'products#add'

end
