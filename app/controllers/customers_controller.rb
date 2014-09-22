class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
    @@flight_type = nil
		@@adult_quantity = nil
		@@children_quantity = nil
    @@itinerary = nil
    @@price=nil
    @@itinerary_1 = nil
    @@itinerary_2 = nil
    @@itinerary_3 = nil
  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer=Customer.all.last
    
   while 0 < @@adult_quantity  do
     t1=Ticket.create(customer_category_id: 1,seat_category_id: 1,customer_id: @customer.id,price: @@price)
     t1.itineraries << @@itinerary
       if !@@itinerary_1.blank?
         t1.itineraries << @@itinerary_1
       end
       if !@@itinerary_2.blank?
         t1.itineraries << @@itinerary_2
       end
       if !@@itinerary_3.blank?
         t1.itineraries << @@itinerary_3
       end
     t1.save
     @@adult_quantity=@@adult_quantity-1
   end
    @@price=@@price*0.85
       while 0 < @@children_quantity  do
     t1=Ticket.create(customer_category_id: 2,seat_category_id: 1,customer_id: @customer.id,price: @@price)
     t1.itineraries << @@itinerary
       if !@@itinerary_1.blank?
         t1.itineraries << @@itinerary_1
       end
       if !@@itinerary_2.blank?
         t1.itineraries << @@itinerary_2
       end
       if !@@itinerary_3.blank?
         t1.itineraries << @@itinerary_3
       end
     t1.save
         @@children_quantity=@@children_quantity-1
   end
    
    @flight_type_1=@@flight_type 
		@adult_quantity_1=@@adult_quantity 
		@children_quantity_1=@@children_quantity 
    @itinerary_1=@@itinerary 
    @price_1=@@price
    @itinerary_1_1=@@itinerary_1 
    @itinerary_2_1=@@itinerary_2 
    @itinerary_3_1=@@itinerary_3 
    CustomerMailer.buy_ticket_confirmation(@customer).deliver
    redirect_to controller: 'home',action: 'index'
  end

  # GET /customers/new
  def new
    @customer = Customer.new
    @@flight_type = params[:flight_type].to_i
		@@adult_quantity = params[:adult_quantity].to_i
		@@children_quantity = params[:children_quantity].to_i

    @@price=params[:price].to_i
    if !(params[:itinerario].to_i ==0)
      @@itinerary = Itinerary.find(params[:itinerario].to_i)
    end
    if !(params[:itinerario_1].to_i ==0)
      @@itinerary_1 = Itinerary.find(params[:itinerario_1].to_i)
    end
    if !(params[:itinerario_2].to_i ==0)
      @@itinerary_2 = Itinerary.find(params[:itinerario_2].to_i)
    end
        if !(params[:itinerario_3].to_i ==0)
      @@itinerary_3 = Itinerary.find(params[:itinerario_3].to_i)
    end
    
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer }
      else
        format.html { render action: 'new' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:name, :passport, :birth_date, :nationality, :email,:flight_type,:itinerario,:adult_quantity,:children_quantity,:price,:itinerario_1,:itinerario_2,:itinerario_3)
      
    end
    
end
