class AddingAirplanes < ActiveRecord::Migration
  def change
    a0=Airplane.create(model: 'ORTEGA_ACM1PT' , capacity: 35)
    a1=Airplane.create(model: 'ORTEGA_ACM2PT' , capacity: 35)
    a2=Airplane.create(model: 'ORTEGA_ACM3PT' , capacity: 35)
    a3=Airplane.create(model: 'ORTEGA_ACM4PT' , capacity: 35)
    a4=Airplane.create(model: 'ORTEGA_ACM5PT' , capacity: 35)
    a5=Airplane.create(model: 'ORTEGA_ACM6PT' , capacity: 35)
    a6=Airplane.create(model: 'ORTEGA_ACM7PT' , capacity: 35)
    a7=Airplane.create(model: 'ORTEGA_ACM8PT' , capacity: 35)
    a8=Airplane.create(model: 'ORTEGA_ACM9PT' , capacity: 35)
    a9=Airplane.create(model: 'ORTEGA_ACM10PT' , capacity: 35)
  end
end
