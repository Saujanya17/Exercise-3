class Dessert
  def initialize(name, calories)
    # your code here
    @name = name
		@calories = calories
  end
  #setter method
	def name=(newname)
		@name = newname
	end
	#getter method
	def name
		@name
	end

	def calories
		@calories
	end

	#setter method
	def calories=(newcals)
		@calories = newcals
	end
	
  def healthy?
    # your code here
    @calories < 200
  end
  def delicious?
    # your code here
    return true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
    @flavor = flavor
  end
  def flavor
		@flavor
	end
	
	def flavor=(newflavor)
		@flavor = newflavor
  	end
  
	def delicious?
    	# YOUR CODE HERE
		if self.flavor == "black licorice" 
			return false
		else
			return true
		end
  	end
end
