Aufgabe1 : Jetzt befinden Sie sich am Datenbank Prompt postgres=# und können SQL Befehle eingeben.

Führen Sie folgende Anweisung: SELECT * FROM Movies; aus. Wie viele Datensätze werden angezeigt?

**-Es werden 20 Datensätze angezeigt.**



Aufgabe2 : Schreiben Sie den SQL-Befehl SELECT * FROM Movies; in die Datei script.sql und erstellen Sie eine
Log-Datei.
**docker run --rm -v $(pwd)/script.sql:/script.sql -e SQL_FILE=/script.sql bsalgert/postgres:v1 > result.log.**

Aufgabe3 : Starten Sie den Container mydb mit dem Image bsalgert/postgres:v1 im Hintergrund.
**docker run -d --name mydb bsalgert/postgres:v1 /demon.sh**

Aufgabe4 : Das Programm psql
Mit *docker ps* Container anzeigen
Mit *docker exec -it "ContainerID" bash* Container starten

Aufgabe5 :
Container stoppen: *docker stop "ContainerID"*
Prüfen, ob Container gestoppt wurde: *docker ps -a* (nur gestoppte Container) ansonsten docker ps
Container neu erstellen: docker run -d --name mydb bsalgert/postgres:v1 /demon.sh

