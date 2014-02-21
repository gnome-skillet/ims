class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(bom_params)

    if @recipe.save
      redirect_to @recipe, notice: '#{@recipe.material.description} successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @recipe.update_attributes!(params)
    flash[:notice] = "#{@recipe.material_description} Recipe successfully updated."
    redirect_to recipes_path(@recipe)
  end

  def edit
  end

  def destroy
    @recipe.intermediates.delete_all
    @recipe.destroy
    redirect_to recipes_url
  end

  def index
    @recipes = Recipe.all
  end

  def show
    params.permit(:intermediate)
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def bom_params
      params.require(:recipe).permit(:material_id)
    end

end
