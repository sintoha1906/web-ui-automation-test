Feature: Login
  As a user
  I want to log in to Swag Labs
  So that I can see the products

  Scenario: Successful login with valid credentials
    Given I am on the login page
    When I enter username "standard_user"
    And I enter password "secret_sauce"
    And I click the login button
    Then I should see the products page

      Scenario: Login fails with a wrong password
    Given I am on the login page
    When I enter username "standard_user"
    And I enter password "wrong_password"
    And I click the login button
    Then I should see the error message "Epic sadface: Username and password do not match any user in this service"

  Scenario: Login fails for a locked out user
    Given I am on the login page
    When I enter username "locked_out_user"
    And I enter password "secret_sauce"
    And I click the login button
    Then I should see the error message "Epic sadface: Sorry, this user has been locked out."

  Scenario: Login fails when username and password are empty
    Given I am on the login page
    When I enter username ""
    And I enter password ""
    And I click the login button
    Then I should see the error message "Epic sadface: Username is required"

  Scenario: Login fails when password is empty
    Given I am on the login page
    When I enter username "standard_user"
    And I enter password ""
    And I click the login button
    Then I should see the error message "Epic sadface: Password is required"

  Scenario: Login fails with a very long username
    Given I am on the login page
    When I enter a username with 300 characters
    And I enter password "secret_sauce"
    And I click the login button
    Then I should see the error message "Epic sadface: Username and password do not match any user in this service"