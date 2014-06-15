class HomeController < ApplicationController

	def index
		@cities = City.all
		@seats = SeatCategory.all
	end
end
