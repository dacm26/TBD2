class AddSeatCustomersCategoriesData < ActiveRecord::Migration
  def change
  	cc1=CustomerCategory.create(name: 'Adult')
  	cc2=CustomerCategory.create(name: 'Kid/Senior')
  	sc1=SeatCategory.create(name: 'Economic')
  	sc2=SeatCategory.create(name: 'Diamond')
  end
end
