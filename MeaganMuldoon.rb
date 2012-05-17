class Fruit1
	attr_accessor :color, :shape, :bites, :dressing
	
	def initialize
		@bites = 5
	end
		
	def eat!
			@bites = [@bites - 1,0].max
	end
		
	def fruit
			true
	end
	
	def seeded?
		seeds === true
	end
	
	def self.attributes=(obj)
		@@attributes = obj
	end
	
	def self.attirbute(type, value)
		@@attributes ||= Hash.new
		@@attributes[type] = value
		define_method type do
			if value.class == TrueClass || FlaseClass
				value
			else
				value.to_s
			end
		end
	end
end


class Apple1 < Fruit1
	def initialize
		@color = orange
		@shape = cylindrical
		@dressing = ranch
		super
	end
end






def salad?(dressing)
		if dressing == "ranch"
			@dressing = "ranch"
		elsif dressing == "1000 island"
			@dressing = "gross"
		else
			@dressing = nil
	end