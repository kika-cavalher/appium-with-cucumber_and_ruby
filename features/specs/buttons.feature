Feature: Buttons

    @simpleButton
    Scenario: Simple click

        Given I access the screen simple click
        When Do the simple click
        Then Must be show the text : "Isso é um clique simples"

    @LongButton
    Scenario: Simple click

        Given I access the screen long click
        When Do the long click
        Then Must be show the text in button : "CLIQUE LONGO OK"
