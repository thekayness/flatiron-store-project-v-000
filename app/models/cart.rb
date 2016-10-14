class Cart < ActiveRecord::Base
	belongs_to :user
	has_many :line_items
	has_many :items, through: :line_items

	def total
		cart_total = 0
		if self.try(:line_items)
			line_items.each do |line_item|
				cart_total += line_item.item.price * line_item.quantity.to_f
			end
		end
		# puts "yyyy #{cart_total}"
		cart_total
	end

	def add_item(item_id)
		line_item = LineItem.find_by(item_id: item_id)
		if line_item
			if line_items.include?(line_item)
				line_item
			else
				line_items.build(:item_id => item_id)
			end
		else
			line_items.build(:item_id => item_id)
		end
	end
	

end
