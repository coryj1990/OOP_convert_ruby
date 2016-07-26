require 'pry'

MyApp.get "/" do

	erb :"results"
end


MyApp.post "/convertmass" do

	@themass = params['initmass']
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
				x = Massconvert.new
				x.setlbs(@themass)
				@conv = x.tokg
			elsif n == 1
				x = Massconvert.new
				x.setlbs(@themass)
				@conv = x.tostone
			elsif n == 2
				x = Massconvert.new
				x.setkg(@themass)
				@conv = x.tolbs
			elsif n == 3
				x = Massconvert.new
				x.setkg(@themass)
				@conv = x.tostone
			elsif n == 4
				x = Massconvert.new
				x.setstone(@themass)
				@conv = x.tolbs
			elsif n == 5
				x = Massconvert.new
				x.setstone(@themass)
				@conv = x.tokg
			end
			n = theifarray.size
		end
	end




	erb :"results"
end
















