require 'spec_helper'

describe Ingredient do
  subject(:ingredient) { Ingredient.create }
  let(:material) { Material.create }
  let(:recipe) { Recipe.create }

  it "should have an associated material" do
    ingredient.should have_at_least(1).error_on(:material)
  end 

  it "should have an associated recipe" do
    ingredient.material = material
    ingredient.should have_at_least(1).error_on(:recipe)
  end 

  it "should have an associated recipe" do
    subject { Ingredient.new(material: Material.new, recipe: Recipe.new) }
  end 

end
