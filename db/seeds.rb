require 'active_record/fixtures'
materials = [
  {:smn => '0001', :disposition => 'raw', :description => 'Popcorn'},
  {:smn => '0002', :disposition => 'raw', :description => 'Chocolate'},
  {:smn => '0003', :disposition => 'intermediate', :description => 'Peanut Butter'},
  {:smn => '0004', :disposition => 'raw', :description => 'Licorice'},
  {:smn => '0005', :disposition => 'final', :description => 'Cheesecake'},
  {:smn => '0006',  :disposition => 'raw', :description => 'Flour'},
  {:smn => '0007', :disposition => 'raw', :description => 'Salt'},
  {:smn => '0008', :disposition => 'raw', :description => 'Eggs'},
  {:smn => '0009', :disposition => 'raw', :description => 'Butter'},
  {:smn => '0010', :disposition => 'raw', :description => 'Sage'},
  {:smn => '0011', :disposition => 'raw', :description => 'Lettuce'},
  {:smn => '0012', :disposition => 'intermediate', :description => 'Salami'},
  {:smn => '0013', :disposition => 'raw', :description => 'Pork Loin'},
  {:smn => '0014', :disposition => 'raw', :description => 'Yogurt'},
  {:smn => '0015', :disposition => 'raw', :description => 'Coffee Beans'},
  {:smn => '0016', :disposition => 'raw', :description => 'Tea Bags'},
  {:smn => '0017', :disposition => 'raw', :description => 'Tea Leaves'},
  {:smn => '0018', :disposition => 'raw', :description => 'Lemons'},
  {:smn => '0019', :disposition => 'final', :description => 'Lemonade'},
  {:smn => '0020', :disposition => 'raw', :description => 'Oranges'},
  {:smn => '0021', :disposition => 'final', :description => 'Orange Juice'},
  {:smn => '0022', :disposition => 'final', :description => 'Vanilla Ice Cream'},
  {:smn => '0023', :disposition => 'final', :description => 'Chocolate Ice Cream'},
  {:smn => '0024', :disposition => 'final', :description => 'Mint Ice Cream'},
  {:smn => '0025', :disposition => 'raw', :description => 'Peanuts'},
  {:smn => '0100', :disposition => 'final', :description => 'Peanut Butter Ice Cream'}]


materials.each do |material|
  Material.create!(material)
end
