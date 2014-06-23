class CustomerMailer < ActionMailer::Base
  default from: "joelpineda94@gmail.com"
  
  def buy_ticket_confirmation(customer)
    @customer = customer
    mail(:to => customer.email, :subject => "You Bought a ticket in HyperFlygth")  
  end 
end
