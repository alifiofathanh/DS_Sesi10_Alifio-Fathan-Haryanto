@digital-skola @cart
Feature: Swag Labs - Cart
  Background: User (standard_user) has successfully logged in
    Given Alifio is on the login page
    When Alifio login with "standard_user" credential
    Then Alifio should see home page

  @positive
  Scenario: As a standard_user, I want to access cart page successfully
    When Alifio click cart button on home page
    Then Alifio should see cart page