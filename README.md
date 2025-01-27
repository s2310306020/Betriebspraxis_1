# Betriebspraxis 1 (16.01.2025 - 31.03.2025)

## Überblick Aufgaben

- Inbetriebnahme + Funktionstest HBI Premium
  - Board Bringup script anpassen
  - RPC Script vorbereiten
  - Dokumentation Gitlab
  - Zusammenbau der fertigen Fronten (bestücken mit SD Karte und RTC Batterie)
- Temperaturmessungen HBI Premium(~1 Tag)
  - Anpassung eines Boards mit klienerem Kühlkörper
  - Vergleich zwischen Original Board und mit Angeasstem Kühlkörper
  - Lastfall auf auf Board erzeugen 
  - Nach einschwingen Temperaturmessungen mit Thermocam (Modell dokumentieren)
  - auswertung der Messungen, recherche in Layout und Schaltplan welche Bauteile auf den Thermocam aufnahmen die heissesten wurden
  - Dokumentation der Erkenntnisse in einem GITLab worklog
- Mechanische Konstruktion Produktionsvorrichtung zum Verkleben und Verlöten einer LED(~2 Tage)
  - Konstruktion mit Solidworks
  - Ermittlung der Dimensionen anhand von Datenblatt
- Verifikationsmesungen HBI Premium Board Interrupt Pin Pegel
  - Messung mit Oszilloskop Waverunner WKM1338
  - Ermittlung der Pegel welche von i.MX8M Plus als High erkannt werden
  - Anhand von Datenblatt wurde ermittelt, dass ein Fehler in der Beschaltung dazu führte das 1.8V anstelle von 3,3V als Referenzpegel für diesen Digitalen Eingang angeschlossen wurde was zu Problemen füren Kann, da der Digitale eingang von aussen mit einer Spannung von 3,3V beschalten wird
- Erstellung BSB HBI Premium
  - Anhand von Vorbesprechung, Bestehenden BSB einer anderen Variante und Schaltplan der aktuellen Variante ein BSB des Boards erstellen
