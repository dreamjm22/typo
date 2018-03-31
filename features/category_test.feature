Feature: Create Categary
  As a blog administrator
  In order to manage my articles
  I want to be able to add category to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit category
    Given I am on the category page
    When I fillout "category_name" by "123"
    And I fillout "category_keywords" by "234"
    And I press "Save"
    Then I should be on the admin categary page
    When I go to the home page
    Then I should see "123"
    When I follow "123"
    Then I should see "234"
    Then I fillout "category_keywords" by "456"
    And I press "submit"
    Then I should be on the admin categary page
    And I should see "456"
