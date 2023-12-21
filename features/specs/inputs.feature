#cucumber features\specs\inputs.feature
#cucumber -t@checkbox
#allure serve logs/

Feature: Inputs

    @radio
    Scenario: RaioButton

        Given I Acess Radio Button page
        When I choose the Ruby options
        Then This option must be checked

    @checkbox
    Scenario: Checkbox

        Given I Acess Checkbox page
        When I choose on checkbox the Ruby options
        Then This option must be checked on checkbox

    @checkbox-appium
    Scenario: All tags using Appium

        Given I Acess Checkbox page
        When I choose all appium tag options:
            |tech|
            |Ruby|
            |Python|
            |Java|
            |Javascript|
            |C#|
            |Robot Framework|
        Then All these options must be checked