

#language: no
# encoding: UTF-8
Egenskap: (NID-23) Utestenge bruker dersom feil passord forsøkes 10 ganger.

  @1 @nid_23
  Scenario: Bekreft passord med for få tegn i forhold til passord
    Gitt at jeg er på innloggingssiden for første gang på en stund
    Og jeg har fylt ut feil passord i "Passord"-feltet 3 ganger
    Så skal brukeren ikke få en varsling om antall forsøk tilgjengelig før utestenging

  @2 @nid_23
  Scenario: Bekreft passord med for få tegn i forhold til passord
    Gitt at jeg er på innloggingssiden for første gang på en stund
    Og jeg har fylt ut feil passord i "Passord"-feltet 4 ganger
    Så skal brukeren få en varsling om antall forsøk tilgjengelig før utestenging
