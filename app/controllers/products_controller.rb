class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def add 
        @product = Product.create(product_params)
        session[:cart] << @product
    end

    private

    def product_params
        params.require(:product).permit(:name)
    end
end
