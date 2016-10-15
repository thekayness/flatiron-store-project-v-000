require 'pry'
class LineItemsController < ApplicationController

	def create
		# puts "in create"
		if !current_user.current_cart
			# puts "no current cart detected"
			current_user.current_cart = Cart.create(user_id: current_user.id)
			cart = current_user.current_cart
			current_user.save
			cart.add_item(params[:item_id])
			cart.save
			# binding.pry
			redirect_to cart_path(cart)
		else
			@cart = current_user.current_cart
			# puts "still no current cart #{current_user.current_cart}"
			@cart.add_item(params[:item_id])
			@cart.save
			redirect_to cart_path(@cart)
		end
	end

end
