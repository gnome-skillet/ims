class Intermediate < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :material
  validates_presence_of :material, :recipe

  def recipe_description
    if self.material != nil
      self.recipe.material_description
    else 
      "Unknown Recipe"
    end
  end

  def material_description
    if self.material != nil
      self.material.description
    else 
      "Unknown Material"
    end
  end

  def description
    if self.material != nil and self.recipe != nil
      self.recipe_description+":"+self.material_description
    else 
      "Invalid Intermediate"
    end
  end

end
