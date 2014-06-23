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
  end

  # GET /customers/new
  def new
    @customer = Customer.new
    @@flight_type = params[:flight_type].to_i
		@@adult_quantity = params[:adult_quantity]
		@@children_quantity = params[:children_quantity]
    @@itinerary = params[:itinerario]
    @@price=params[:price]
    @@itinerary_1 = params[:itinerario_1]
    @@itinerary_2 = params[:itinerario_2]
    @@itinerary_3 = params[:itinerario_3]
    
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
      params.require(:customer).permit(:name, :passport, :birth_date, :nationality, :email)
      params.permit(:flight_type,:itinerario,:adult_quantity,:children_quantity,:price,:itinerario_1,:itinerario_2,:itinerario_3)
    end
    
end
