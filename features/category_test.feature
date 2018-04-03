Feature: Create Categary
  As a blog administrator
  In order to manage my articles
  I want to be able to add category to my blog

  Background: categories in database
    Given the blog is set up
    And I am logged into the admin panel
    Given the following categories exist:
     | name | keywords | permalink | description |
     | 567  | 567      | 567       | 567         |

  Scenario: Successfully create category
    Given I am on the category page
    And I fill in "category_name" with "234"
    And I fill in "category_keywords" with "234"
    And I press "Save"
    Then I should be on the category page
    Then I should see "234"

  Scenario: Successfully edit category  
    Given I am on the category page
    When I follow "567"
    Then I fill in "category_keywords" with "456"
    And I press "Save"
    Then I should be on the category page
    And I should see "456"
    
  Scenario: Successfully delete category
    Given I am on the category page
    When I follow "567"
    When I follow "Delete"
    Then I should be on the category delete page
    And I follow "Cancel"
    Then I should be on the category page
    And I should see "567"
    When I follow "567"
    When I follow "Delete"
    Then I should be on the category delete page
    And I press "delete"
    Then I should be on the category page
    And I should not see "567"