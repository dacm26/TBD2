class HomeController < ApplicationController

	def index
		@cities = City.all
		@seats = SeatCategory.all 	
	end
 

	def find_fligth  
		@flight_type = params[:flight_type].to_i
		@adult_quantity = params[:adult_quantity]
		@children_quantity = params[:children_quantity]
			city_ida = params[:ida].first
			city_regreso = params[:regreso].first
			fecha_ida = params[:datetime_ida]
			fecha_regreso = params[:datetime_regreso]
			city_ida_1 = params[:ida_1].first
			city_regreso_1 = params[:regreso_1].first
			fecha_regreso_1 = params[:multi_1_1]
			city_ida_2 = params[:ida_2].first
			city_regreso_2 = params[:regreso_2].first
			fecha_regreso_2 = params[:multi_2_1]
			city_ida_3 = params[:ida_3].first
			city_regreso_3 = params[:regreso_3].first
		@fecha_regreso_3 = params[:multi_3_1]
			city_ida_4 = params[:ida_4].first
			city_regreso_4 = params[:regreso_4].first
		@fecha_regreso_4 = params[:multi_4_1]
		@price = 200+rand(0..500)
	
	airplanes=Airplane.all
	r_id = rand(airplanes.size)+1

	tiempo_1 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime
	tiempo_2 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime

	if @flight_type == 1
	  @itinerario = Itinerary.create(origin_city_id: city_ida, destiny_city_id: city_regreso, airplane_id: r_id, departure_date: fecha_ida, arrival_date: fecha_regreso,  departure_time: tiempo_1, arrival_time: tiempo_2)
	elsif @flight_type == 2
	  @itinerario = Itinerary.create(origin_city_id: city_ida, destiny_city_id: city_regreso, airplane_id: r_id, departure_date: fecha_ida, arrival_date: fecha_regreso,  departure_time: tiempo_1, arrival_time: tiempo_2)
	tiempo_1 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime
	tiempo_2 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime
	  @itinerario_1 = Itinerary.create(origin_city_id: city_regreso, destiny_city_id: city_ida, airplane_id: r_id, departure_date: fecha_regreso, arrival_date: fecha_regreso,  departure_time: tiempo_1, arrival_time: tiempo_2)
  else
	  @itinerario = Itinerary.create(origin_city_id: city_ida_1, destiny_city_id: city_regreso_1, airplane_id: r_id, departure_date: fecha_regreso_1, arrival_date: nil,  departure_time: tiempo_1, arrival_time: tiempo_2)
	  airplanes = Airplane.all
	  r_id = rand(airplanes.size)+1
	  tiempo_1 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime
	  tiempo_2 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime
	  @itinerario_1 = Itinerary.create(origin_city_id: city_ida_2, destiny_city_id: city_regreso_2, airplane_id: r_id, departure_date: fecha_regreso_2, arrival_date: nil,  departure_time: tiempo_1, arrival_time: tiempo_2)
	  if !@fecha_regreso_3.to_s.blank?
		airplanes = Airplane.all
	  r_id = rand(airplanes.size)+1
	  tiempo_1 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime
	  tiempo_2 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime
		@itinerario_2 = Itinerary.create(origin_city_id: city_ida_3, destiny_city_id: city_regreso_3, airplane_id: r_id, departure_date: @fecha_regreso_3, arrival_date: nil,  departure_time: tiempo_1, arrival_time: tiempo_2)
	  end
	  if !@fecha_regreso_4.to_s.blank?
		airplanes = Airplane.all
	  r_id = rand(airplanes.size)+1
	  tiempo_1 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime
	  tiempo_2 = (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime
		@itinerario_3 = Itinerary.create(origin_city_id: city_ida_4, destiny_city_id: city_regreso_4, airplane_id: r_id, departure_date: @fecha_regreso_4, arrival_date: nil,  departure_time: tiempo_1, arrival_time: tiempo_2)
	  end
  end
	end
  
  private
   def search_params
	 params.permit(:flight_type, :adult_quantity, :children_quantity, :ida, :regreso, :datetime_ida,:datetime_regreso, :ida_1, :regreso_1, :multi_1_1, :ida_2, :regreso_2, :multi_2_1, :ida_3, :regreso_3, :multi_3_1, :ida_4, :regreso_4, :multi_4_1)
	end
  
  
  
end
