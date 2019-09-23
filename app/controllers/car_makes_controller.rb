class CarMakesController < ApplicationController
  before_action :set_car_make, only: [:show, :edit, :update, :destroy]

  # GET /car_makes
  # GET /car_makes.json
  def index
    @car_makes = CarMake.all
  end

  # GET /car_makes/1
  # GET /car_makes/1.json
  def show
  end

  # GET /car_makes/new
  def new
    @car_make = CarMake.new
  end

  # GET /car_makes/1/edit
  def edit
  end

  # POST /car_makes
  # POST /car_makes.json
  def create
    @car_make = CarMake.new(car_make_params)

    respond_to do |format|
      if @car_make.save
        format.html { redirect_to @car_make, notice: 'Car make was successfully created.' }
        format.json { render :show, status: :created, location: @car_make }
      else
        format.html { render :new }
        format.json { render json: @car_make.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_makes/1
  # PATCH/PUT /car_makes/1.json
  def update
    respond_to do |format|
      if @car_make.update(car_make_params)
        format.html { redirect_to @car_make, notice: 'Car make was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_make }
      else
        format.html { render :edit }
        format.json { render json: @car_make.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_makes/1
  # DELETE /car_makes/1.json
  def destroy
    @car_make.destroy
    respond_to do |format|
      format.html { redirect_to car_makes_url, notice: 'Car make was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_make
      @car_make = CarMake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_make_params
      params.require(:car_make).permit(:make, :country)
    end
end
