class Material < ActiveRecord::Base
	has_many :catalogs
  accepts_nested_attributes_for :catalogs
  has_many :intermediates
  has_one :bill_of_materials
  has_many :bill_of_materials, :through => :intermediates
  #has_one :recipe, :class_name => "BillOfMaterial", :foreign_key => "bill_of_material_id"

	validates :description, :smn, :disposition, presence: true
	validates :smn, uniqueness: true
        validates :description, length: { maximum: 50,
            too_long: "%{count} characters is the maximum allowed" }
	
	validates_associated :catalogs
  def self.all_dispositions
    %w(raw intermediate bulk final kit)
  end
end
