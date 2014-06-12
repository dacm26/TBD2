class Airplane < ActiveRecord::Base
	validates :capacity, presence: true, numericality: { only_integer: true }
	validates :model, presence: true
	has_many :itineraries
end
