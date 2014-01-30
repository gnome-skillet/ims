Feature: Check if material is in inventory  

  In order to track inventory 
  As the System Administrator 
  I want to see how many lots of a material I have in inventory 

  Scenario: Search for material in Inventory 
    Given material "A" exists:
    todo
    And the following lots "1","2" and "3" for that material exist: 
    todo
    And I am on "Show Material" for material "A"
    When I click on "Show in Inventory"
    Then I should see the page for "Existing Inventory" 
    And I should see lots "1", "2" and "3" listed 
