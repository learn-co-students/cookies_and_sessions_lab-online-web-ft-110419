class ProductsController < ApplicationController

    def index
        @products = cart
    end

    def add 
        @product = params[:name]
        session[:cart] << @product
    end

    private

    def product_params
        params.require(:product).permit(:name)
    end
end
