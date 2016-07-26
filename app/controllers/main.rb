require 'pry'

MyApp.get "/" do

	erb :"layout"
end


MyApp.get "/convert" do
	puts "Did this work?"

	erb :"results"
end