class ProductsController < ApplicationController 

    def index 
        
    end 

    def add 
        @product = params[:product]
        cart = session[:cart] || []
        cart << @product
        session[:cart] = cart
    end
    
end