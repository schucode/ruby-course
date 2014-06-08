require 'time' # you're gonna need it

class Item

	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Bar
	attr_reader :name
	attr_accessor :menu_items 

	def initialize(name, menu_items=[], happy_discount=0)
		@name = name
		@menu_items = menu_items
		@happy_discount = happy_discount
	end

	def add_menu_item(name, price)
		item = Item.new(name, price)
		@menu_items << item
	end

	def happy_hour?
		t = Time.now
		if 15 <= t.hour && t.hour <= 16
			return true
		else 
			return false
		end
	end

	def happy_discount=(value)
		if value < 0
			@happy_discount = 0
		elsif value > 1
			@happy_discount = 1
		else
			@happy_discount = value
		end
	end

	# reader method that accounts for happy hour
	def happy_discount
		if send(:happy_hour?) == true
			@happy_discount
		else
			0
		end
	end



end