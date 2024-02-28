@digital-skola @detailProduct
Feature: Swag Labs - Detail Product
  Background: User (standard_user) has successfully logged in 
    Given Alifio is on the login page
    When Alifio login with "standard_user" credential
    Then Alifio should see home page

  @positive
  Scenario: As a standard_user, I want to access detail product page successfully
    When Alifio click detail button on random product at home page
    Then Alifio should see detail product page