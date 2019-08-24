class RehbersController < ApplicationController
  before_action :set_rehber, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show] 

  # GET /rehbers
  # GET /rehbers.json
  def index
    @rehbers = Rehber.all
  end

  # GET /rehbers/1
  # GET /rehbers/1.json
  def show
  end

  # GET /rehbers/new
  def new
    @rehber = Rehber.new
  end

  # GET /rehbers/1/edit
  def edit
  end

  # POST /rehbers
  # POST /rehbers.json
  def create
    @rehber = Rehber.new(rehber_params)

    respond_to do |format|
      if @rehber.save
        format.html { redirect_to @rehber, notice: 'Rehber was successfully created.' }
        format.json { render :show, status: :created, location: @rehber }
      else
        format.html { render :new }
        format.json { render json: @rehber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rehbers/1
  # PATCH/PUT /rehbers/1.json
  def update
    respond_to do |format|
      if @rehber.update(rehber_params)
        format.html { redirect_to @rehber, notice: 'Rehber was successfully updated.' }
        format.json { render :show, status: :ok, location: @rehber }
      else
        format.html { render :edit }
        format.json { render json: @rehber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rehbers/1
  # DELETE /rehbers/1.json
  def destroy
    @rehber.destroy
    respond_to do |format|
      format.html { redirect_to rehbers_url, notice: 'Rehber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rehber
      @rehber = Rehber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rehber_params
      params.require(:rehber).permit(:isim, :sehir, :ozet, :resim)
    end
end
