class IngredientsController < ApplicationController
  before_filter :get_recipe

  def get_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def show
    @ingredient = @recipe.ingredients.find(params[:id]) 
  end

  def index
    @ingredients = @recipe.ingredients 
  end

  def new
  end

  def create
    @ingredient = @recipe.ingredients.build(ingredient_params)

    if @ingredient.save
      redirect_to recipes_path(@recipe), notice: "Ingredient #{@ingredient.material_description} added to Recipe for #{@recipe.description}."
    else
      render action: 'new'
    end
  end

  def update
    @ingredient = @recipe.ingredients.find(params[:id]) 
    @ingredient.update_attributes!(params[:ingredient])
    flash[:notice] = "#{@ingredient.description} successfully updated."
    redirect_to recipes_path(@recipe)
  end

  def edit
    @ingredient = @recipe.ingredients.find(params[:id]) 
  end

  def destroy
    @ingredient = @recipe.ingredients.find(ingredient_params) 
    @ingredient.destroy
    flash[:notice] = "Ingredient removed from Recipe for #{@recipe.material_description}"
    redirect_to recipes_path(@recipe)
  end

  def material_description
  end

  private 
  def ingredient_params
      params.require(:recipe_id)
      params.require(:ingredient).permit(:recipe_id, :material_id, :units, :amount)
  end

end
