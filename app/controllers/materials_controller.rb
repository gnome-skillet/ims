class MaterialsController < ApplicationController

  def index
    @materials = Material.all
  end

  def show
    @material = get_material(params[:id])
  end

  def new
    @material = Material.new
  end

  def edit
    @material = get_material(params[:id])
  end

  def create
    @material = Material.new(material_params)

    if @material.save
      redirect_to @material, notice: '#{@material.description} was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @material = get_material(params[:id])
    @material.update_attributes!(material_params)
    flash[:notice] = "#{@material.description} was successfully updated."
    redirect_to material_path(@material)
  end

  # DELETE /materials/1
  def destroy
    @material = get_material(params[:id])
    @material.destroy
    redirect_to materials_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_material(material_id)
      Material.find(material_id)
    end

    def material_params
      params.require(:material).permit(:description, :smn, :disposition)
    end
end
