Aufgabe1 : docker ps, docker start <Containername>, docker exec -it <Containername> bash, psql -U postgres
-Erstellen Sie jeweils eine Abfrage, um die Tupel(Zeilen) der Tabelle Movies anzuzeigen
Mit *\dt* schauen welche Tabellen es gibt und dann:
**SELECT * FROM movies**

Aufgabe2 :

Erstellen Sie eine Abfrage, um jeweils Titel, Erscheinungsdatum und Genre_ID aller Filme anzuzeigen, wobei die Ausgabe nach Titel sortiert sein soll
**SELECT Title, ReleaseDate, Genre_ID**
**FROM movies**
**ORDER BY Title;**

Aufgabe3 :

Erstellen Sie eine Abfrage, um die Filmverleihfirmen anzuzeigen. Unterdrücken Sie die mehrfache Ausgabe der Filmverleihfirmen

**SELECT DISTINCT Distribution**
**FROM movies;**

Aufgabe4a :
Erstellen Sie eine Abfrage, um ID, Titel und Gewinn jener Filme anzuzeigen, die mehr als 600 Millionen Dollar eingespielt haben.

**SELECT Movie_ID, Title, Profit**
**FROM movies**
**WHERE Profit > 600000000;**

Aufgabe 4b

Ändern Sie die Abfrage aus Aufgabe 4a dahingehend, dass Titel und Einspielergebnis aller Filme angezeigt werden, deren Ergebnis zwischen 600 und 700 Millionen liegt.

**SELECT Title, Profit**
**FROM movies**
**WHERE Profit BETWEEN 600000000 AND 700000000;**

Aufgabe 5a

Zeigen Sie Titel, Budget und Gewinn aller Filme an, die eine Fortsetzung eines anderen Films sind. Sortieren Sie die Daten in absteigender Reihenfolge nach Gewinn.

**SELECT Title, Budget, Profit**
**FROM movies**
**WHERE SequelOf IS NOT NULL**
**ORDER BY Profit DESC;**

Aufgabe 5b

Modifizieren Sie Ihre Anfrage, so dass Budget und Gewinn als eine Summe mit Namen "UMSATZ" ausgegeben wird.

**SELECT Title, Budget + Profit AS UMSATZ**
**FROM movies**
**WHERE SequelOf IS NOT NULL**
**ORDER BY UMSATZ DESC;**



