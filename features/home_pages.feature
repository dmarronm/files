Feature: cuando el visitante entre al sitio tiene que ver el
titulo FileAttacher

Scenario: View home page
  Given I am a website visitor
  When I go to the home page
  Then I should see "FileAttacher"

