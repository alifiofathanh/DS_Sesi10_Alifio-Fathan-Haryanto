@digital-skola @login
Feature: Swag Labs - Login
  Background: User on the login page
    Given Alifio is on the login page

  @positive
  Scenario: As a standard_user, I want to log in successfully
    When Alifio login with "standard_user" credential
    Then Alifio should see home page

  @negative
  Scenario: As a locked_out_user, I should get error message
    When Alifio login with "locked_out_user" credential
    Then Alifio should see error "Epic sadface: Sorry, this user has been locked out."