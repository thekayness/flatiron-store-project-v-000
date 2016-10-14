class CartsController < ApplicationController
	include CartsHelper

	def show
		@cart = Cart.find(params[:id])
	end

	def checkout
		@cart = Cart.find(params[:id])
		# puts "got to checkout method"
		buy_items(@cart)
		current_user.current_cart = nil
		redirect_to cart_path(@cart)
	end	

end
