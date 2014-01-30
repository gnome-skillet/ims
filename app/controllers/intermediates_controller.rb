class IntermediatesController < ApplicationController
  before_filter :get_bill_of_material

  def get_bill_of_material
    @bill_of_material = BillOfMaterial.find(params[:bill_of_material_id])
  end

  def show
    @intermediate = @bill_of_material.intermediates.find(params[:id]) 
  end

  def index
    @intermediates = @bill_of_material.intermediates 
  end

  def new
  end

  def create
    @intermediate = @bill_of_material.intermediates.build(intermediate_params)

    if @intermediate.save
      redirect_to bill_of_materials_path(@bill_of_material), notice: "Intermediate #{@intermediate.material_description} added to BOM for #{@bill_of_material.description}."
    else
      render action: 'new'
    end
  end

  def update
    @intermediate = @bill_of_material.intermediates.find(params[:id]) 
    @intermediate.update_attributes!(params[:intermediate])
    flash[:notice] = "#{@intermediate.description} successfully updated."
    redirect_to bill_of_materials_path(@bill_of_material)
  end

  def edit
    @intermediate = @bill_of_material.intermediates.find(params[:id]) 
  end

  def destroy
    @intermediate = @bill_of_material.intermediates.find(intermediate_params) 
    @intermediate.destroy
    flash[:notice] = "Intermediate removed from BOM for #{@bill_of_material.material_description}"
    redirect_to bill_of_materials_path(@bill_of_material)
  end

  def material_description
  end

  private 
  def intermediate_params
      params.require(:bill_of_material_id)
      params.require(:intermediate).permit(:bill_of_material_id, :material_id, :units, :amount)
  end

end
