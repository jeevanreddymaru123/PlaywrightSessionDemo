Feature: Login Functionality

  Scenario: Successful login with valid credentials
    Given the user is on the login page
    When the user enters valid username "<username>"
    When the user enters valid password "<password>"
    And I click on the login button
    Then the user should be redirected to the home page

    Examples:
      | username                        | password  |
      | jeevan.reddymaru@abcfitness.com | Hello123! |
