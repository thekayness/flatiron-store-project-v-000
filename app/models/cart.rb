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
		line_item = LineItem.find_by(item_id: item_id, cart_id: self.id)
		if line_item
				line_item.quantity += 1
				line_item.save
				line_item
		else
			line_items.build(:item_id => item_id)
		end
	end

	def format_total_because_apparently_scale_still_truncates_0
		"%.2f" % [total]
	end
	

end
