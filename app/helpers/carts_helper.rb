module CartsHelper
	
	
	def buy_items(current_cart)
		# puts "got to buy items"
		current_cart.line_items.each do |line_item|
			line_item.item.inventory -= line_item.quantity
			line_item.item.save
		end
	end


end
