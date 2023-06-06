Feature: Login Scenarios
  Scenario Outline: Login with invalid user name
    When I enter user name as "<user name>"
    And I enter password as "<password>"
    And I login
    Then login should fail with error "<err>"
    Examples:
    | username | password | err |
    |invalidusername|secret_sauce|Username and password do not match|



  Scenario Outline: Login with invalid password
    When I enter user name as "<user name>"
    And I enter password as "<password>"
    And I login
    Then login should fail with error "<err>"
    Examples:
      | username | password | err |
      |standard_user|invalidpassword|Username and password do not match|


  Scenario Outline: Login with valid password
    When I enter user name as "<user name>"
    And I enter password as "<password>"
    And I login
    Then I should see products page with title "<title>"
    Examples:
      | username | password | title |
      |standard_user|secret_sauce|PRODUCTS|