class AddingCities < ActiveRecord::Migration
  def change
  	c1=City.create(name: "SPS")
  	c1=City.create(name: "TEG")
  	c1=City.create(name: "LCB")
  	c1=City.create(name: "LAX")
  	c1=City.create(name: "HOU")
  	c1=City.create(name: "MIA")
  	c1=City.create(name: "ROA")
  	c1=City.create(name: "TOK")
  	c1=City.create(name: "MIN")
  	c1=City.create(name: "LON")
  end
end
