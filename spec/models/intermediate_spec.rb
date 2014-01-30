require 'spec_helper'

describe Intermediate do
  subject(:intermediate) { Intermediate.create }
  let(:material) { Material.create }
  let(:bill_of_material) { BillOfMaterial.create }

  it "should have an associated material" do
    intermediate.should have_at_least(1).error_on(:material)
  end 

  it "should have an associated bill_of_material" do
    intermediate.material = material
    intermediate.should have_at_least(1).error_on(:bill_of_material)
  end 

  it "should have an associated bill_of_material" do
    subject { Intermediate.new(material: Material.new, bill_of_material: BillOfMaterial.new) }
  end 

end
