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


class Temperatureconvert
	def setF (f)
		@Far = f.to_f
	end

	def setC (c)
		@Cel = c.to_f
	end

	def toF()
		if @Far != nil
			@conv = @Far
			return @conv
		elsif @Cel != nil
			@conv = (@Cel*(9.0/5.0)) + 32
			return @conv
		end
	end

	def toC()
		if @Far != nil
			@conv = (@Far - 32)*(5.0/9.0)
			return @conv
		elsif @Cel != nil
			@conv = @Cel
			return @conv
		end
	end
end	


class Distanceconvert
	def setmi (mi)
		@mi = mi.to_f
	end

	def setkilom (km)
		@kilom = km.to_f
	end

	def tomi()
		if @mi != nil
			@conv = @mi
			return @conv
		elsif @kilom != nil
			@conv = @kilom*(1.0/1.609)
			return @conv
		end
	end

	def tokilom()
		if @mi != nil
			@conv = @mi*(1.609)
			return @conv
		elsif @kilom != nil
			@conv = @kilom
			return @conv
		end
	end
end	










