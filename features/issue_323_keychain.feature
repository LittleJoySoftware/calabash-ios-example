@issue_323
Feature: Accessing the iOS keychain
  In order to test apps that use the iOS keychain
  As a calabash framework tester
  I want a way to query and modify the keychain

  Scenario: i want to query the keychain after the app saves data
    Given that the keychain is clear
    And I set the username to "username" and password to "password"
    Then the keychain should contain the account password "password" for "username"

  Scenario: i want to be able to set the keychain contents from calabash
    Given that the keychain contains the account password "mypass" for "myuser"
