Feature: Demo NopCommerce's TopMenu acceptance criteria

  As a User,
  I would like to check acceptance criteria of NonCommerce TopMenu

  Background: User is on given URL
    When      User type URL https://demo.nopcommerce.com
    And       User click on Enter button
    Then      User is on given URL

  Scenario: Verify that User can navigate to books category
    When    User is on given URL
    And     Click on books tab on TopMenu
    Then    User is navigated to Books category page

  Scenario: Verify that User can see the books category page with filters and list of products
    When    User is on given URL
    And     Click on books tab on Top Menu
    And     Check Filters and List Tab
    Then    Books category page is Displayed with filters and List Tabs

  Scenario: Verify that user can see 'Sort By' filter on book category page
    Given   User is on books category page
    When    User is on books category page
    And     Check 'Sort by' filter is present
    Then    'Sort by' filter is available on book category page

  Scenario: Verify that user can see 'Display' filter on book category page
    Given   User is on books category page
    When    User is on books category page
    And     Check 'Display' filter is present
    Then    'Display' filter is available on book category page

  Scenario:  Verify that user can see 'Grid' tab on book category page
    Given    User is on books category page
    When     User is on books category page
    And      Check 'Grid' tab is present
    Then     'Grid' tab is available on book category page

  Scenario: Verify that user can see 'List' tab on book category page
    Given   User is on books category page
    When    User is on books category page
    And     Check 'List' tab is present
    Then    'List' tab is available on book category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'sort by' filter
    Given   User is on books category page
    When    User is on books category page
    And     Check on 'Sort by' filter
    And     Check that 'Name: A to Z' selection is present
    Then    'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'sort by' filter
    Given   User is on books category page
    When    User is on books category page
    And     Check on 'Sort by' filter
    And     Check that 'Name: A to Z' is first in order
    Then    'Name: A to Z' is first option in order

  Scenario:  Verify that user can see 'Name: A to Z' filter is functioning as expected
    Given    User is on books category page
    When     User is on books category page
    And      Click on 'Sort by' filter
    And      select 'Name: A to z' filter
    Then     All products are displayed in alphabetical order






