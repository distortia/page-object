Feature: Links
  In order to interact with links
  Testers will need access and interrogation ability

  Background:
    Given I am on the static elements page
  
  Scenario: Selecting a link
    When I select the link labeled "Google Search"
    Then the page should contain the text "Success"

  Scenario Outline: Locating links on the Page
    When I search for the link by "<search_by>"
    Then I should be able to select the link

  Scenarios:
    | search_by |
    | id        |
    | class     |
    | name      |
    | xpath     |
    | link      |
    | link_text |
    | text      |
    | index     |

  @watir_only
  Scenario Outline: Locating links on Watir only
    When I search for the link by "<search_by>"
    Then I should be able to select the link
  
  Scenarios:
    | search_by |
    | href      |
    
  Scenario: Support for multiple parameters
    When I select a link labeled "Hello" and index "0"
    Then the page should contain the text "Success"
    Given I am on the static elements page
    When I select a link labeled "Hello" and index "1"
    Then the page should contain the text "Success"

  Scenario: Retrieve a Link
    When I retrieve a link element
    Then I should know it exists
    And I should know it is visible
