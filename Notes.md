# ToDo Liste ab 16.01.2025

- Vorbereitung RPC script für Funktionstest
- Netwrix IT Ticket
- Gitlab Dokumentation für Charge 3 vorbereiten
- Neue charge in Betrieb nehmen
- Funktionstests
- Zusammenbau
- USB3 test
- Touch calib passt nicht
- Temperaturmessungen HBI Premium
- Worklog anpassen
- H:\ aufräumen
- Kinzi Produktionsvorrichtung Kleben/Löten
- Zwischenzeitliche Verifikationsmessung Untersuchung Interrupt Pin Pegel
- BSB HBI Premium
- VRP RSC anschauen
- HBI Economy Uart messungen (prüfen welche Boudrate eingestellt ist)
- HBI Economy USB Stick erkennung vergleichen
- HBI Economy Ethernet mtu auslesen
- Henri termin für abstimmung 
- HBI Premium SD Karte anschauen mit welchem speed sich zwei unterschiedliche karten Beim einstecken melden, mit Diffprobes messen wie die flanken aussehen (Überschwinger,…) siehe worklog UlJo https://development.ginzinger.com/HBI_3.5_Hettich/wiki/J.UlmerLogs20KW52-1
- Messaufbau Messpunkte in Worklog dokumentieren
- Worklog vorbereiten mit dokumentation der geforderten Timings pro Speedgrade
- Henri fragen ob es eine möglichkeit gibt die Speedgrades einzuschränken oder ob man für jede einschränkung einen eigenen Kernel braucht
- Vorbereiten der Messsetup für das Oszi
- UlJo: Datenleitung welche Kritisch aussieht auswählen(nahe an CLK, durch andere VIAS/Leitungen geroutet
- Oszi Reservieren
- Messungen laufen lassen
- Ergebnis
- aufbau gelnauer erklären (SD Karte angelötet, ...)
- Alle Settings der Datenleitungen Adresssen zum auslesen dokumentieren und pro messung das aktuelle Setting dokumentieren
- Haken nur bei wirklich geprüften werten.
- Worklog auf vollständigkeit und einheitlichkeit prüfen
	- Maske richtig gesetzt (Cursor)
	- Werte eingehalten einzeln prüfen
	- Richtige Spezifikation abgeschrieben
	- Triggerpunkt/Offset richtig
- Wieviele Lagen
- Buchungsposten
- genaue Neuverbindung
- Nochmal genau prüfen
	- Aussenabmessungen
	- Bauteilfootprints
- Dip Switch und Jumper auch drehen
- Laufzeit des Clock sSignals messen-> mit zwei probes eine an der SD-Karte eine am Przessor, differenz ist laufzeit des Signals
- Clock Descew screenshot wurde aufgeziechnet, für weitere messungen Clock deskew einstellen und messungen damit vornehmen
- Beschreiben wie und warum Diskew aufgenommen wurde 
- Read Messungen dokumentieren
- CMD6 auslesen/beeinflussen probieren
- 33Ohm Wiederstand in serie einlöten
- HBI Premium Störeinkopplung Touchmessungen geräte umbauen beide mit Kühlkörper einmal 10'' einmal 7''
- Issue hinzufügen für serienwiederstand
- Treiberstärken Issue anpassen
- Neue messung auf 33 Ohm machen oder auf 39Ohm
- Einzeichnen bei Messaufbau an welchen Punkten gemessen wurde
- In worklog dokumentieren welcher Zeitaufwand für Messungen und welcher fpr vorbereitung 

# Fragen
- Aktuelles testgerät platt machen um board bringup zu testen
- Touch calib file
- Buchungsposten
- I2C auf 2 Blöcke aufteilen oder einer
- Encoder zu STOP-Taste? Buffer?
- RS485 richtig angepasst?
- SDR104 Maske Prüfen/Anpassen
- Messungen erneut machen und testen ob trotz write flanke das Timing eingehalten wird
- wenn timing dann eingehalten wird dann größeren Serienwiederstand einsetzen und alle tests neu machen

# Notizen
- Display
- Erweiterungsstecker
- 10 Tasten entfernen, Encoder zu STOP-Taste
- 2X RS485 Treiber oben rechts
- 2x 5V Versorgung
- USB 3.0
- Stoptaste zu Benutzer
- Beschriftung
- I2C
- I2C
- Beschriftung
- Stoptaste zu Benutzer
- USB 3.0
- 2x 5V Versorgung
- 2X RS485 Treiber oben rechts
- 10 Tasten entfernen, Encoder zu STOP-Taste
- Erweiterungsstecker
- Display
- CPU

# Notizen

- VRP R
- RS485 richtig angepasst?
- Encoder zu STOP-Taste? Buffer?
- I2C auf 2 Blöcke aufteilen oder einer
- Buchungsposten
- Touch calib file
- Aktuelles testgerät platt machen um board bringup zu testen
- SW_PAD_CTL Register SD2_Data0: Ref.Man Imx8Mp S.1707
- GPIO Description: S.1355

# TODO am 14.02.2025
- Messung auf Netzwerkleitung bei großem Display
- Dokumentenablage anpassen
- Ablegen und vergleichen der Config files
- Worklog vervollständigen
- Ergebnisse bestpechen

# SD-Card Drive Strength Problem
- Im kernel ist zu sehen, dass det Drive Strength Type basierend auf Host Capabilities auf der Karte festgelegt wird, es wirde keine genauere Recherche betrieben da die frage ist ob das der way to go ist.
- Es ist nicht einfach über ein linux tool (mmc-utils) als registerwert zu setzen
- Es ist chip abhängig und board abhängig
- https://elixir.bootlin.com/linux/v5.10.7/source/drivers/mmc/core/core.c#L1269
