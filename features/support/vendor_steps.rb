
# Single-line step scoper
Given /^the following vendors exist:/ do |vendors_table|
  vendors_table.hashes.each do |vendor|
      Vendor.create!(vendor)
  end
end

When /^I add a vendor$/ do
  Factory(:vendor)
end 

Then /I should see all the vendors/ do
  flunk "Unimplemented"
end 

Then /I should see the page for the new vendor/ do
  flunk "Unimplemented"
end

When /^I delete vendor (\w+)$/ do |vendor|
  flunk "Unimplemented"
end 

Then /^the notice "(.*)" is displayed$/ do |notice|
  flunk "Unimplemented"
end 

