Feature: Add Vendor

  In order to track vendors 
  As the System Administrator 
  I want to add new vendors to the list 

  Scenario: Successful Add
    Given the following vendors exist:
    Given a vendor "Testy"
    And I am on "Add Vendor"
    When I add a vendor
    Then I should see the page for the new vendor
    And the notice "Vendor Added" is displayed
