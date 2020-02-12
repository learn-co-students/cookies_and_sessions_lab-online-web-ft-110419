class ProductsController < ApplicationController 

    def index 
        @items = ["apple", "chicken", "rice"]
    end 

    def add 
        @product = Product.find(params[:id])
        cart = session[:cart] || []
        cart << @product.id
    end
    
end