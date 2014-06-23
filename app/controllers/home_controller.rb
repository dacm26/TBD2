class HomeController < ApplicationController

	def index
		@cities = City.all
		@seats = SeatCategory.all
    	@flight_type = nil
    	@adult_quantity = nil
    	@children_quantity = nil
    	
	end

	def find_fligth  
		@flight_type = params[:flight_type]
		@adult_quantity = params[:adult_quantity]
		@children_quantity = params[:children_quantity]
		@city_ida = params[:ida].first
		@city_regreso = params[:regreso].first
		@fecha_ida = params[:datetime_ida]
		@fecha_regreso = params[:datetime_regreso]
		@city_ida_1 = params[:ida_1].first
		@city_regreso_1 = params[:regreso_1].first
		@fecha_regreso_1 = params[:multi_1_1]
		@city_ida_1 = params[:ida_2].first
		@city_regreso_1 = params[:regreso_2].first
		@fecha_regreso_1 = params[:multi_2_1]
		@city_ida_1 = params[:ida_3].first
		@city_regreso_1 = params[:regreso_3].first
		@fecha_regreso_1 = params[:multi_3_1]
		@city_ida_1 = params[:ida_4].first
		@city_regreso_1 = params[:regreso_4].first
		@fecha_regreso_1 = params[:multi_4_1]


	end
  private
   def search_params
     params.permit(:flight_type, :adult_quantity, :children_quantity, :ida, :regreso, :datetime_ida,:datetime_regreso, :ida_1, :regreso_1, :multi_1_1, :ida_2, :regreso_2, :multi_2_1, :ida_3, :regreso_3, :multi_3_1, :ida_4, :regreso_4, :multi_4_1)
    end
  
  
  
end
