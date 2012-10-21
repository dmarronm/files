Feature: cuando el visitante entre a la pagina de login tiene que haber
password y contraseña

Scenario: View home page
  Given I am a website visitor
  When I go to the login page
  Then I should see "Usuario"
  Then I should see "Password"
