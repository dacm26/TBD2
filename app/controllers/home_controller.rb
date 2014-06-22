class HomeController < ApplicationController

	def index
		@cities = City.all
		@seats = SeatCategory.all
	end

	def find_fligths
		respond_to do |format|
			msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
			format.json  { render :json => msg } # don't do msg.to_json
		end
	end
end
