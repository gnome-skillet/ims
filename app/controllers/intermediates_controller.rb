class IntermediatesController < ApplicationController
  before_filter :get_recipe

  def get_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def show
    @intermediate = @recipe.intermediates.find(params[:id]) 
  end

  def index
    @intermediates = @recipe.intermediates 
  end

  def new
  end

  def create
    @intermediate = @recipe.intermediates.build(intermediate_params)

    if @intermediate.save
      redirect_to recipes_path(@recipe), notice: "Intermediate #{@intermediate.material_description} added to Recipe for #{@recipe.description}."
    else
      render action: 'new'
    end
  end

  def update
    @intermediate = @recipe.intermediates.find(params[:id]) 
    @intermediate.update_attributes!(params[:intermediate])
    flash[:notice] = "#{@intermediate.description} successfully updated."
    redirect_to recipes_path(@recipe)
  end

  def edit
    @intermediate = @recipe.intermediates.find(params[:id]) 
  end

  def destroy
    @intermediate = @recipe.intermediates.find(intermediate_params) 
    @intermediate.destroy
    flash[:notice] = "Intermediate removed from Recipe for #{@recipe.material_description}"
    redirect_to recipes_path(@recipe)
  end

  def material_description
  end

  private 
  def intermediate_params
      params.require(:recipe_id)
      params.require(:intermediate).permit(:recipe_id, :material_id, :units, :amount)
  end

end
