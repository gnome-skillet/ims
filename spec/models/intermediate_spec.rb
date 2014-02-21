require 'spec_helper'

describe Intermediate do
  subject(:intermediate) { Intermediate.create }
  let(:material) { Material.create }
  let(:recipe) { Recipe.create }

  it "should have an associated material" do
    intermediate.should have_at_least(1).error_on(:material)
  end 

  it "should have an associated recipe" do
    intermediate.material = material
    intermediate.should have_at_least(1).error_on(:recipe)
  end 

  it "should have an associated recipe" do
    subject { Intermediate.new(material: Material.new, recipe: Recipe.new) }
  end 

end
