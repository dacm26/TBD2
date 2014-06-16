class Ticket < ActiveRecord::Base

	belongs_to :customer
	belongs_to :seat_category
	belongs_to :customer_category
	has_and_belongs_to_many :itineraries
end
