Feature: Installation
    Tests if versions can be installed using FVM

    Scenario: Install Master Channel
        Given Version "mastefr"
        When I install
        Then I expect to be installed correctly
