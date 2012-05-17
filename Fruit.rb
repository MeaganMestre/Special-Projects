class Fruit1
	attr_accessor :color, :shape, :bites
	
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
	
    def color
        
	end
end


class Apple1 < Fruit1
	def initialize
		@color = "red"
		@shape = "round"
        @bites = 5
		super
	end
end