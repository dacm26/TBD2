class Itinerary < ActiveRecord::Base

	belongs_to :city
	belongs_to :airplane
  has_many :voyages
  has_many :tickets, through: :voyages  
  
end
