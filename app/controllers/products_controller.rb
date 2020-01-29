class ProductsController < ApplicationController

    def index
        @cart = cart
    end

    def add  
        cart << product_params
        render :index
    end

    private

    def product_params
        params.require(:product).permit(:name)
    end
end
