class Voyage < ActiveRecord::Base
  belongs_to :itinerary
  belongs_to :ticket
end
