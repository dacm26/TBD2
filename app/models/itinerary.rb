class Itinerary < ActiveRecord::Base

	belongs_to :city
	belongs_to :airplane
	has_and_belongs_to_many :tickets
  
  
  def self.search(search)
  if search
    find(:all, :conditions => ['id LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
    
end
  
  
  
end
