#cucumber features\specs\login.feature
# allure serve logs/

Feature: Login

    Scenario: Successfull Login

        Given I Acess Login page
        When Submit my credentials
            |email|eu@papito.io|
            |pass|qaninja|
        Then I see the notification: "Show! Suas credenciais são validas."