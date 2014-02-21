class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :materials, :through => :ingredients
  belongs_to :material
  accepts_nested_attributes_for :ingredients

  def material_id
    if self.material != nil
      self.material.id
    else 
      nil 
    end
  end

  def material_description
    if self.material != nil
      self.material.description
    else 
      "Material not assigned"
    end
  end
end
