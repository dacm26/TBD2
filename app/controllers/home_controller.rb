class HomeController < ApplicationController

	def index
		@cities = City.all
		@seats = SeatCategory.all
	end

	def metodo1
		
	end
end
