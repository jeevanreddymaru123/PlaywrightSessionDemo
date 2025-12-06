Feature: Registration Feature
    As a user
    I want to register for an account
    So that I can access the application

  Scenario Outline: Validating the Registration Feature
    Given I navigate to the registration page
    When I enter the name as "<name>"
    Then I enter the phone number as "<phone>"
    And I enter the email as "<email>"
    And I select the country as "<country>"
    And I enter the city as "<city>"
    And I enter the username as "<username>"
    And I enter the password as "<password>"
    And I click the register button

    Examples:
      | name        | phone      | email                      | country | city   | username | password |
      | Jeevan Maru | 9711111558 | jeevan@way2automation.com | India   | Hyderabad  | Jeevan123 | Jeevan123 |
      | Rajareddy Maru | 9711191558 | information@way2automation.com    | Germany | Berlin | Raja123 | Raja123 |
