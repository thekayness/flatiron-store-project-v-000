class Item < ActiveRecord::Base
	belongs_to :category
	has_many :line_items

	def self.available_items
		items_available = Item.where("inventory > '0'")
	end

	def format_price_because_apparently_scale_still_truncates_0
		"%.2f" % [price]
	end
end
