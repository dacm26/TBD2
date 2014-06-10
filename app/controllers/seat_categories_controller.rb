class SeatCategoriesController < ApplicationController
  before_action :set_seat_category, only: [:show, :edit, :update, :destroy]

  # GET /seat_categories
  # GET /seat_categories.json
  def index
    @seat_categories = SeatCategory.all
  end

  # GET /seat_categories/1
  # GET /seat_categories/1.json
  def show
  end

  # GET /seat_categories/new
  def new
    @seat_category = SeatCategory.new
  end

  # GET /seat_categories/1/edit
  def edit
  end

  # POST /seat_categories
  # POST /seat_categories.json
  def create
    @seat_category = SeatCategory.new(seat_category_params)

    respond_to do |format|
      if @seat_category.save
        format.html { redirect_to @seat_category, notice: 'Seat category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @seat_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @seat_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seat_categories/1
  # PATCH/PUT /seat_categories/1.json
  def update
    respond_to do |format|
      if @seat_category.update(seat_category_params)
        format.html { redirect_to @seat_category, notice: 'Seat category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @seat_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_categories/1
  # DELETE /seat_categories/1.json
  def destroy
    @seat_category.destroy
    respond_to do |format|
      format.html { redirect_to seat_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seat_category
      @seat_category = SeatCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seat_category_params
      params.require(:seat_category).permit(:name, :)
    end
end
