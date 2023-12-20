#cucumber features\specs\inputs.feature
# allure serve logs/

Feature: inputs

    Scenario: Successfull RaioButton

        Given I Acess Radio Button page
        When I choose the Ruby options
        Then This option must be checked