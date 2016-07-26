require 'pry'

MyApp.get "/" do

	erb :"results"
end


MyApp.post "/convertmass" do

	@init = params['initmass']
	@params = params

	lbstokg = params['lbstokg']
	lbstostone = params['lbstostone']
	kgtolbs = params['kgtolbs']
	kgtostone = params['kgtostone']
	stonetolbs = params['stonetolbs']
	stonetokg = params['stonetokg']

	theifarray = []
	theifarray << lbstokg << lbstostone << kgtolbs << kgtostone << stonetolbs << stonetokg

	n = 0
	while n < theifarray.size
		puts n
		if theifarray[n] == nil
			n += 1
		elsif theifarray[n] != nil
			if n == 0
				@initunits = "lbs"
				x = Massconvert.new
				x.setlbs(@init)
				@conv = x.tokg
				@convunits = "kgs"
			elsif n == 1
				@initunits = "lbs"
				x = Massconvert.new
				x.setlbs(@init)
				@conv = x.tostone
				@convunits = "stone"
			elsif n == 2
				@initunits = "kgs"
				x = Massconvert.new
				x.setkg(@init)
				@conv = x.tolbs
				@convunits = "lbs"
			elsif n == 3
				@initunits = "kgs"
				x = Massconvert.new
				x.setkg(@init)
				@conv = x.tostone
				@convunits = "stone"
			elsif n == 4
				@initunits = "stone"
				x = Massconvert.new
				x.setstone(@init)
				@conv = x.tolbs
				@convunits = "lbs"
			elsif n == 5
				@initunits = "stone"
				x = Massconvert.new
				x.setstone(@init)
				@conv = x.tokg
				@convunits = "kgs"
			end
			n = theifarray.size
		end
	end




	erb :"results"
end


MyApp.post "/converttemp" do

	@init = params['inittemp']

	ftoc = params['FtoC']
	ctof = params['CtoF']

	if ftoc != nil
		@initunits = "Fahrenheit"
		x = Temperatureconvert.new
		x.setF(@init)
		@conv = x.toC
		@convunits = "Celsius"
	elsif ctof != nil
		@initunits = "Celsius"
		x = Temperatureconvert.new
		x.setC(@init)
		@conv = x.toF
		@convunits = "Fahrenheit"
	end

	erb :"results"
end


MyApp.post "/convertdist" do

	@init = params['initdist']

	mitokilom = params['mitokilom']
	kilomtomi = params['kilomtomi']

	if mitokilom != nil
		@initunits = "miles"
		x = Distanceconvert.new
		x.setmi(@init)
		@conv = x.tokilom
		@convunits = "kilometers"
	elsif kilomtomi != nil
		@initunits = "kilometers"
		x = Distancecovert.new
		x.setkilom(@init)
		@conv = x.tomi
		@convunits = "miles"
	end

	erb :"results"
end






