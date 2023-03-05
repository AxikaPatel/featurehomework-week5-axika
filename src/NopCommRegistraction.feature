Feature: Nopcommerce Registration
  As a User
  I  want to check the register functionality of NopCommerce

  Background: I am on NopCommerce Registration page
    Given     I open the Google Chrome Browser
    When      I open th eURL https://demo.noncommerce.com/register
    Then      I am on NopCommerce Registraction page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When            I enter first name "<first name>"
    And             I enter last name "<last name>"
    And             I enter Email address "<Email>"
    And             I enter password "<password>"
    And             I enter confirm password "<confirm password>"
    And             Click on Register button
    Then            I can see an error message "<error message>"
    And             I am not able to register

    Examples:
      | first name | last name | Email           | password | confirm password | error message                              |
      | ""         | Patel     | patel@gmail.com | 123456   | 123456           | Please enter first name                    |
      | Axika      | ""        | patel@gmail.com | 123456   | 123456           | Please enter first name                    |
      | Axika      | Patel     | ""              | 123456   | 123456           | Please enter valid Email                   |
      | Axika      | Patel     | patel@gmail.com | ""       | 123456           | Password is required                       |
      | Axika      | Patel     | patel@gmail.com | 123456   | ""               | Confirm password is required               |
      | Axika      | Patel     | patel@gmail.com | 123456   | 1234             | Password and Confirm password do not match |
      | Axika      | Patel     | patel@gmail.com | 123456   | ""               | Minimum 6 character password is required   |
      | ""         | ""        | ""              | ""       | ""               | Mandatory (*) filed is required            |

  Scenario: I should be able to select any one radio button from Gender label of your personal Details section
    Given   I am on Gender label of your personal detail section
    When    I select "Male" radio button
    And     I selecgt "Female" radio button
    Then    I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day,Month and Year from drop down list of Date of Birth field
    Given           I am on Date of Brith field of your personal deatil section
    When            I select day "<Day>"
    And             I select month "<Month>"
    And             I select Year "<Year>"
    Then            I am able to select Day,Month and Year from drop down list

    Examples:
      | Day | Month | Year |
      | 04  | March | 1987 |

  Scenario:   I should be able to check and uncheck the newsletter box on Options section
    Given     I am on newsletter lable on Options section
    When      I click on newsletter checkbox
    And       I again click on newsletter checkbox
    Then      I was able to check and uncheck the box next to newsletter label

  Scenario: I should be able to Register with valid mandatory (*) field data on registration page
    When    I enter First Name "Axika"
    And     I enter Last Name "Patel"
    And     I enter Email "patel@gmail.com"
    And     I enter Password "123456"
    And     I enter Confirm Password "123456"
    And     I click on Register button
    Then    I was able to Register Successfully

