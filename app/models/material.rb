class Material < ActiveRecord::Base
	has_many :catalogs
  accepts_nested_attributes_for :catalogs
  has_many :ingredients
  has_one :recipes
  has_many :recipes, :through => :ingredients
  #has_one :recipe, :class_name => "Recipe", :foreign_key => "recipe_id"

	validates :description, :smn, :disposition, presence: true
	validates :smn, uniqueness: true
        validates :description, length: { maximum: 50,
            too_long: "%{count} characters is the maximum allowed" }
	
	validates_associated :catalogs
  def self.all_dispositions
    %w(raw intermediate bulk final kit)
  end
end
