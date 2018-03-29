Feature: Create Categary
  As a blog administrator
  In order to manage my articles
  I want to be able to add categary to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categary
    Given I am on the categary page
    When I fill in "article_name" with "Foobar"
    And I fill in "Keywords" with "Lorem Ipsum"
    And I press "Save"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
