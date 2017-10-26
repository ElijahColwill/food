class Exersize

	def initialize()
		@activities = []
	end

	def add_exersize(new_activity)
		@activities.push(new_activity)
	end

	def total_calories
		total_calories = 0
		@activities.each do |activity_item|
			total_calories += activity_item.calories
		end
		total_calories
	end

end