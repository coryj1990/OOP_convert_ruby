require "pry"


class Massconvert
	def setlbs (value)
		@lbs = value.to_f
	end

	def setkg (value)
		@kg = value.to_f
	end

	def setstone (value)
		@stone = value.to_f
	end

	def tolbs()
		if @lbs != nil
			return @lbs
		elsif @kg != nil
			@conv = @kg*(1/0.4536)
			return @conv
		elsif @stone != nil
			@conv = @stone*(1/0.07143)
			return @conv
		end
	end

	def tokg()
		if @lbs != nil
			@conv = @lbs*(0.4536)
			return @conv
		elsif @kg != nil
			return @kg
		elsif @stone != nil
			@conv = @stone*(0.4536/0.07143)
			return @conv
		end
	end


	def tostone()
		if @lbs != nil
			@conv = @lbs*(0.07143)
			return @conv
		elsif @kg != nil
			@conv = @kg*(0.07143/0.4536)
		elsif @stone != nil
			return @stone
		end
	end

end















