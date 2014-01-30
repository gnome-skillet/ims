class Intermediate < ActiveRecord::Base
  belongs_to :bill_of_material
  belongs_to :material
  validates_presence_of :material, :bill_of_material

  def bill_of_material_description
    if self.material != nil
      self.bill_of_material.material_description
    else 
      "Unknown Bill of Material"
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
    if self.material != nil and self.bill_of_material != nil
      self.bill_of_material_description+":"+self.material_description
    else 
      "Invalid Intermediate"
    end
  end

end
