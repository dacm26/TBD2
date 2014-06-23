class AddingAirplanes < ActiveRecord::Migration
  def change
    a0=Airplane.create(model: 'A0010' , capacity: 35)
    a1=Airplane.create(model: 'A0012' , capacity: 35)
    a2=Airplane.create(model: 'A0013' , capacity: 35)
    a3=Airplane.create(model: 'A0014' , capacity: 35)
    a4=Airplane.create(model: 'A0015' , capacity: 35)
    a5=Airplane.create(model: 'A0016' , capacity: 35)
    a6=Airplane.create(model: 'A0017' , capacity: 35)
    a7=Airplane.create(model: 'A0018' , capacity: 35)
    a8=Airplane.create(model: 'A0019' , capacity: 35)
    a9=Airplane.create(model: 'A0020' , capacity: 35)
  end
end
