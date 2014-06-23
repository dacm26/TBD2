class Ticket < ActiveRecord::Base

	belongs_to :customer
	belongs_to :seat_category
	belongs_to :customer_category
  has_many :voyages
  has_many :itineraries, through: :voyages  
end
