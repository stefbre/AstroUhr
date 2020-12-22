# Astro-Uhr für den LCN Bus auf Linux-Basis
----------------------------------------
VERWENDUNG AUF EIGENE GEFAHR!

Um die Software herunterzuladen, kopieren Sie folgende Zeile:

wget https://github.com/stefbre/AstroUhr/raw/master/install_AstroUhr.sh && sh install_AstroUhr.sh

Copy & Paste im SSH Terminal, mehr muss nicht getan werden.
______________________________________________________________________________________________________

Die Software wurde getestet auf: Pi Zero W, Pi 3b & Pi 4 mit dem neuesten Lite OS.
Werden andere Webserver (apache etc.) verwendet, muss der Port geändert werden!

Die Astro-Uhr sendet per Telnet, einen PCK Befehl an eine laufende PCHK. Damit lassen sich Relais in einem Modul schalten bzw. Kommandos ausführen, die auf den 
Statustasten (Tabelle C) hinterlegt sind, sofern diese aktiviert wurden.
Für den Betrieb, wird eine freie PCHK Verbindung/Lizenz benötigt.

Die Weboberfläche lässt sich durch den Gerätenamen oder der IP des Raspberry aufrufen. Das Passwort für den Login lautet: 1337.
Tragen Sie nach dem Login, Ihre Geo-Daten mit einem PUNKT getrennt (z.B. 00.000) und den Namen Ihres Ortes ein.
Durch den Breiten- und Längengrad, wird der Sonnenauf- und untergang berechnet. Die Serverzeit muss korrekt sein, ansonsten wird eine falsche Zeit berechnet!

Nachdem Sie die Geo-Daten eingetragen haben, geben Sie die PCHK Zugangsdaten ein. Standard ist 127.0.0.1 (localhost). 
Läuft die Astro-Uhr auf dem gleichen Pi, wie die PCHK, müssen Sie die IP nicht anpassen.
Wird die PCHK auf einem anderen Gerät betrieben, geben Sie die IP dieses Gerätes ein.

Benutzername und Passwort, ist den vergebenen Zugangsdaten der PCHK zu entnehmen und einzutragen.

Um die Einrichtung abzuschließen, geben Sie das anzusprechende Segment/Modul/Relais, in die Felder "Segment/ID/Relais" ein.
Es gibt je einen Befehl, für Sonnenauf- und untergang.

______________________________________________________________________________________________________

Möchten Sie z.B. das Modul 87 ansprechen und jedes 2. Relais einschalten, sieht der Befehl wie folgt aus:

Legende: Relais 1 = EIN; 0 = AUS; - = nicht geschaltet

Segment: 000 (da kein Segment vorhanden ist) ID: 087 und Relais: 1-1-1-1-

Soll ein Relais in einem Modul geschaltet werden, welches sich in einem Segment befindet:

Segment: 015 ID: 087 Relais: -0-0-0-0
______________________________________________________________________________________________________

Nachdem alle Daten korrekt eingegeben wurden, drücken Sie Speichern. Damit werden die Daten gespeichert und sind nach einem Stromausfall weiter vorhanden.
Sollte der Raspberry neustarten, startet sich der Dienst automatisch.

Wenn der Raspberry keine Verbindung zum Internet besitzt, kann durch "Zeit setzen" die Serverzeit des Pis, an die des Browsers angepasst werden.

______________________________________________________________________________________________________
Erweiterte Infos:

Diese Dateien wurden für die Verwendung durch den Benutzer Pi erstellt, sowie Python 3.7. Wurde Pi geändert, müssen die Scripte/Dateien angepasst werden.
Wird eine andere Version als Python 3.7 verwendet, muss die Version in der AstroUhr.service Datei angepasst werden. Diese findet man in etc/systemd/system.

Möchten Sie das Passwort oder den Serverport ändern, editieren Sie folgende Datei: main.py unter /home/pi/AstroUhr und starten den Dienst/Pi neu.

Das Passwort finden Sie in Zeile 114 und den Serverport in Zeile 102.

Wird der Port verändert, muss die IP:Port im Browser eingeben werden! Der Standardport lautet 80.
______________________________________________________________________________________________________

Entfernen des Copyrights ist untersagt!
