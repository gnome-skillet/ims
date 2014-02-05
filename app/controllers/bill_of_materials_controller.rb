class BillOfMaterialsController < ApplicationController
  before_action :set_bill_of_material, only: [:show, :edit, :update, :destroy]
  def new
    @bill_of_material = BillOfMaterial.new
  end

  def create
    @bill_of_material = BillOfMaterial.new(bom_params)

    if @bill_of_material.save
      redirect_to @bill_of_material, notice: '#{@bill_of_material.material.description} BOM successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @bill_of_material.update_attributes!(params)
    flash[:notice] = "#{@bill_of_material.material_description} BOM successfully updated."
    redirect_to bill_of_materials_path(@bill_of_material)
  end

  def edit
  end

  def destroy
    @bill_of_material.intermediates.delete_all
    @bill_of_material.destroy
    redirect_to bill_of_materials_url
  end

  def index
    @bill_of_materials = BillOfMaterial.all
  end

  def show
    params.permit(:intermediate)
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_of_material
      @bill_of_material = BillOfMaterial.find(params[:id])
    end

    def bom_params
      params.require(:bill_of_material).permit(:material_id)
    end

end
