class ProductsController < ApplicationController
	def index
		@cart = session[:cart]
	end 
	def add
		# raise params.inspect
		cart << params[:item_name]
		redirect_to "/"
	end
end