class CabinetsController < ApplicationController
  before_action :set_cabinet, only: [:show, :edit, :update, :destroy]

  # GET /cabinets
  # GET /cabinets.json
  def index
    @cabinets = Cabinet.all
  end

  # GET /cabinets/1
  # GET /cabinets/1.json
  def show
  end

  # GET /cabinets/new
  def new
    @cabinet = Cabinet.new
  end

  # GET /cabinets/1/edit
  def edit
  end

  # POST /cabinets
  # POST /cabinets.json
  def create
    @cabinet = Cabinet.new(cabinet_params)

    respond_to do |format|
      if @cabinet.save
        format.html { redirect_to @cabinet, notice: 'Cabinet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cabinet }
      else
        format.html { render action: 'new' }
        format.json { render json: @cabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cabinets/1
  # PATCH/PUT /cabinets/1.json
  def update
    respond_to do |format|
      if @cabinet.update(cabinet_params)
        format.html { redirect_to @cabinet, notice: 'Cabinet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabinets/1
  # DELETE /cabinets/1.json
  def destroy
    @cabinet.destroy
    respond_to do |format|
      format.html { redirect_to cabinets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabinet
      @cabinet = Cabinet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cabinet_params
      params.require(:cabinet).permit(:number, :temperature, :Room_id)
    end
end
