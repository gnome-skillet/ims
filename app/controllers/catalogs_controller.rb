class CatalogsController < ApplicationController
  before_action :set_catalog, only: [:show, :edit, :update, :destroy]
  before_action :get_material, only: [:new, :index, :show, :edit, :update, :destroy]

  def index
    @catalogs = @material.catalogs
  end

  def show
    @catalog = @material.catalogs.find(params)
  end

  def new
    @catalog = @material.catalogs.new(catalog_params)
  end

  def edit
  end

  def create
    @catalog = Catalog.new(catalog_params)

    if @catalog.save
      redirect_to [@material,@catalog], notice: "Catalog #{@catalog.partnumber} was successfully created."
    else
      render action: 'new'
    end
  end

  def update
    @catalog.update_attributes!(catalog_params)
    flash[:notice] = "#{@catalog.partnumber} was successfully updated."
    redirect_to catalog_path(@catalog)
  end

  # ActiveAdmin
  # DELETE /catalogs/1
  # DELETE /catalogs/1.json
  def destroy
    @catalog.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_url }
      format.json { head :no_content }
    end
  end

  private
    def get_material
      @material = Material.find(catalog_params[:material_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_catalog
      @catalog = Catalog.find(catalog_params)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalog_params
      params.permit(:partnumber, :count, :amount_per_container, :unit, :vendor_id, :material_id)
    end
end
