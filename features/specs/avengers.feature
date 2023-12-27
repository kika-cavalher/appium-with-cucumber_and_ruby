#cucumber features\specs\avengers.feature

Feature: Avengers List

    @capitaoAmerica
    Scenario: Remove American Capitan

        Given I access the screen Avengers
        When I delete Firts Avenger
        Then Must be show the warning: "Item removido! (posição = 0)"

    @Thor
    Scenario: Remove Thor

        Given I access the screen Avengers
        When I delete Second Avenger
        Then Must be show the warning: "Item removido! (posição = 1)"


    @IronMan
    Scenario: Change place and remove Iron Man

        Given I access the screen Avengers
        When I change third position from firts position
        And I delete Firts Avenger
        Then Must be show the warning: "Item removido! (posição = 0)"

# Fatou incluir os outros avangers

    # @IronMan
    # Scenario: Remove Iron Man

    #     Given I access the screen Avengers
    #     When I delete Third Avenger
    #     Then Must be show the warning: "Item removido! (posição = 2)"

    # @Hulk
    # Scenario: Remove Hulk

    #     Given I access the screen Avengers
    #     When I delete Fourth Avenger
    #     Then Must be show the warning: "Item removido! (posição = 3)"

    # @SpiderMan
    # Scenario: Remove Spider Man

    #     Given I access the screen Avengers
    #     When I delete Fifth Avenger
    #     Then Must be show the warning: "Item removido! (posição = 4)"


    @AllAvengers
    Scenario: Remove All Avenger

        Given I access the screen Avengers
        When I delete Firts Avenger
        Then Must be show the warning: "Item removido! (posição = 0)"
        When I delete Firts Avenger
        Then Must be show the warning: "Item removido! (posição = 0)"
        When I delete Firts Avenger
        Then Must be show the warning: "Item removido! (posição = 0)"
        When I delete Firts Avenger
        Then Must be show the warning: "Item removido! (posição = 0)"
        When I delete Firts Avenger
        Then Must be show the warning: "Item removido! (posição = 0)"
