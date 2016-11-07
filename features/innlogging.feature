#language: no
  #http://www.swtestacademy.com/ruby-cucumber-and-capybara-on-windows/

Egenskap: Demonstrere egenskapene til features og Cucumber ved bruk av Capybara

  Bakgrunn: Bruker skal være utlogget før tests
    Gitt at vi har en testbruker "vegard.nyeng@nrk.no"
    Når vi går mot testsiden "innlogging.nrk.no"
    Så skal vi være utlogget fra innloggingstjenesten

  @1
  Scenario: Profildata som er tilgjengelige etter innlogging
    Gitt at jeg er på innloggingssiden
    Og brukeren fullfører en innlogging mot identitetstjenesten
    Så skal jeg kunne motta følgende profildata om brukeren
      | FirstName |
      | LastName  |