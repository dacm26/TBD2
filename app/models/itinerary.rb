class Itinerary < ActiveRecord::Base

	belongs_to :city
	belongs_to :airplane
	has_and_belongs_to_many :tickets  

  
  
end
