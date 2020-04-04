class ProductsController < ApplicationController
    def index
      cart
    end
    
    def add
      cart << params[:product]
      render :index
    end

    #Create a Products controller with two actions, index and add.
  end