class Catalog < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :material
  has_many :orders

  def material_description
    if self.material != nil
      self.material.description 
    else 
      "Material not assigned"
    end
  end

  def vendor_name
    if self.vendor != nil
      self.vendor.name
    else 
      "Vendor not assigned"
    end
  end

  def vendor_id
    if self.vendor != nil
      self.vendor.id
    else 
      nil 
    end
  end

end

