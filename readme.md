All detections are in the HTML file so if you are corious just look in there and see how its getting detected.

DE :

-- Client sided --
Das Skript registriert ein NUI-Callback (RegisterNUICallback), um Daten von der Client-Seite zu empfangen.
Insbesondere wird die Zeitdifferenz zwischen dem Öffnen und Schließen der Entwicklertools (timeDifference) übertragen.
Die Konfiguration (Config) ermöglicht es dem Serveradministrator, die Anti-DevTools-Funktion zu aktivieren und einen Schwellenwert festzulegen, ab dem Spieler als verdächtig gelten.
Der Server überprüft regelmäßig, ob die Zeitdifferenz den Schwellenwert überschreitet. Wenn ja, wird ein Kick-Event (antidevtools_kick) ausgelöst, um den betroffenen Spieler zu entfernen.

-- JavaScript ( Client ) --

Der Client überwacht mithilfe von JavaScript regelmäßig, ob die Entwicklertools im Browser geöffnet sind.
Durch die Messung der Zeitdifferenz zwischen dem Starten und Beenden der Profiler-Funktion wird festgestellt, ob Entwicklertools aktiv sind.
Bei Erkennung von Entwicklertools wird die Zeitdifferenz an den Server gesendet.

-- Zusammen --

Die beiden Seiten kommunizieren über HTTP-POST-Requests, um Informationen auszutauschen.
Die Serverseite ist darauf ausgelegt, unerwünschte Aktivitäten zu erkennen und zu ahnden, während die Clientseite die lokale Entwicklertools-Aktivität überwacht und bei Bedarf Berichte an den Server sendet.

EN :

-- Client-Side --

The script registers an NUI callback (RegisterNUICallback) to receive data from the client side. Specifically, the time difference between the opening and closing of developer tools (timeDifference) is transmitted. The configuration (Config) allows the server administrator to activate the Anti-DevTools function and set a threshold at which players are considered suspicious. The server regularly checks whether the time difference exceeds the threshold. If so, a kick event (antidevtools_kick) is triggered to remove the affected player.

-- JavaScript (Client) --

The client, using JavaScript, regularly monitors whether developer tools are open in the browser. By measuring the time difference between the start and end of the profiler function, it is determined whether developer tools are active. Upon detecting developer tools, the time difference is sent to the server.

-- Collaboration --

Both sides communicate via HTTP POST requests to exchange information. The server side is designed to detect and penalize unwanted activities, while the client side monitors local developer tools activity and sends reports to the server when necessary.