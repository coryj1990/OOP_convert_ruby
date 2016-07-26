require "pry"


class Massconvert
	def setlbs (value)
		@lbs = value
	end

	def setkg (value)
		@kg = value
	end

	def setstone (value)
		@stone = value
	end

	def tolbs()
		if @lbs != 0
			return @lbs
		elsif @kg != 0
			@conv = @kg*(1/0.4536)
			return @conv
		elsif @stone != 0
			@conv = @stone*(1/0.07143)
			return @conv
		end
	end

	def tokg()
		if @lbs != 0
			@conv = @lbs*(0.4536)
			return @conv
		elsif @kg != 0
			return @kg
		elsif @stone != 0
			@conv = @stone*(0.4536/0.07143)
			return @conv
		end
	end


	def tostone()
		if @lbs != 0
			@conv = @lbs*(0.07143)
			return @conv
		elsif @kg != 0
			@conv = @kg*(0.07143/0.4536)
		elsif @stone != 0
			return @stone
		end
	end

end















