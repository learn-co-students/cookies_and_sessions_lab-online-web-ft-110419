class ProductsController < ApplicationController

    def index
        @cart = cart
    end

    def add  
        cart << product_params[:name]
        session[:cart] = cart
        redirect_to root_path
    end

    private

    def product_params
        params.require(:product).permit(:name)
    end
end
