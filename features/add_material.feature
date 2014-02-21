Feature: Admin adds material
        As an admin
        So that the system can track materials
        I want to add a new material

Scenario: add material
        Given I am on the Add Material page
        And I fill in "Material Number" with "12341234"
        And I fill in "Description" with "butter cookie"
        And I press "Save Changes"
        Then I should see "Material Number: 12341234" 
        And I should see "Description: butter cookie" 
