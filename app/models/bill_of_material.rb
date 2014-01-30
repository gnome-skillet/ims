class BillOfMaterial < ActiveRecord::Base
  has_many :intermediates
  has_many :materials, :through => :intermediates
  belongs_to :material
  accepts_nested_attributes_for :intermediates

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
