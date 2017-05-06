class TodoList

	def initialize(arr)
		@internal_array = arr
	end

	def get_items
		@internal_array
	end

	def add_item(item)
		@internal_array << item
	end

	def delete_item(item)
		@internal_array.delete(item)
	end

	def get_item(i)
		@internal_array[i]
	end
	
end