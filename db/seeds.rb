require 'active_record/fixtures'
materials = [
  {:smn => '0001', :description => 'Popcorn'},
  {:smn => '0002', :description => 'Chocolate'},
  {:smn => '0003', :description => 'Peanut Butter'},
  {:smn => '0004', :description => 'Licorice'},
  {:smn => '0005', :description => 'Cheesecake'},
  {:smn => '0006',  :description => 'Flour'},
  {:smn => '0007', :description => 'Salt'},
  {:smn => '0008', :description => 'Eggs'},
  {:smn => '0009', :description => 'Butter'},
  {:smn => '0010', :description => 'Sage'},
  {:smn => '0011', :description => 'Lettuce'},
  {:smn => '0012', :description => 'Salami'},
  {:smn => '0013', :description => 'Pork Loin'},
  {:smn => '0014', :description => 'Yogurt'},
  {:smn => '0015', :description => 'Coffee Beans'},
  {:smn => '0016', :description => 'Tea Bags'},
  {:smn => '0017', :description => 'Tea Leaves'},
  {:smn => '0018', :description => 'Lemons'},
  {:smn => '0019', :description => 'Lemonade'},
  {:smn => '0020', :description => 'Oranges'},
  {:smn => '0021', :description => 'Orange Juice'},
  {:smn => '0022', :description => 'Vanilla Ice Cream'},
  {:smn => '0023', :description => 'Chocolate Ice Cream'},
  {:smn => '0024', :description => 'Mint Ice Cream'},
  {:smn => '0025', :description => 'Peanut Butter Ice Cream'}]


materials.each do |material|
  Material.create!(material)
end
