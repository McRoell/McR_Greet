--[[ Template für eigene Texte.

Es sind drei einfache Schritte zum Erfolg.
1. Lest Euch die Anleitung einmal durch, damit es später keine Probleme gibt.
2. Macht Eure Eingaben unten im "Eingabebereich"
3. Speichert die geänderte Datei unter dem Namen mcr_customtxt.lua ab.
   Es ist wichtig, dass ihr genau diesen Namen verwendet, damit es funktioniert.

Bitte VOR einem Update des Addons die Datei mcr_customtxt.lua sichern und nach
dem Update wieder ins Verzeichnis kopieren. Hintergrund dafür ist, dass Beim 
Update die alten Dateien gnadenlos überschrieben werden.

--##### Anleitung und ein wenig Hintergrund #####
Bitte nur in die dafür vorgesehenen Bereiche schreiben und die Vorgaben
für Anführungszeichen, Kommata und geschweifte Klammern genau befolgen.
Andernfalls kann es zu Problemen im Spiel kommen.

Es gibt vier "Zeitzonen" für die jeweils eigene Texte verfasst werden können.
Jede dieser Zeitzonen wird durch eine sog. Variable repräsentiert.
1. 04:00 bis 10:59 - Morgens - GREETMOC
2. 11:00 bis 13:59 - Mittags - GREETMITC
3. 14:00 bis 17:59 - Der Tag - GREETTAC
4. 18:00 bis 03:59 - Abends  - GREETABC

Streng genommen handelt es sich nicht um Variablen sondern um Arrays, da hier
mehrere Werte auf einmal gespeichert werden. Das ist HIER jetzt aber
nebensächlich.

Die Namen der Variablen dürfen nicht verändert werden.
Wie funktioniert das Ganze jetzt?

Das System folgt einer gewissen Struktur - man spricht hier auch von einer
Syntax - die wie folgt ausschaut:
Variable = {Eintrag1, Eintrag2, Eintrag3, usw.};

Die Kommata trennen die einzelnen Werte. Wenn ein Text gespeichert werden soll, muss
dieser in Anführungszeichen gesetzt werden. Das ganze Paket wird dann mit
geschweiften Klammern {} umschlossen und mit einem Semikolon ; beendet - im
Grunde wie ein Punkt einen Satz beendet.
Damit man sich nicht mit ewig langen Zeilen rumärgern muss, kann man das Ganze
in mehrere Zeilen aufteilen.

In unserem Fall sähe dass dann so aus:
Variable = {
"Hallo",
"Huhu",
"Ich grüße Euch"
};

Nach dem letzten Eintrag wird kein Komma gesetzt.
Ich habe die Bereiche Markiert, in denen Ihr eure eignen Text eintragen könnt.
Je einen Begrüßungstext in eine Zeile und außer beim Letzten mit einem Komma
abgeschlossen
]]

--###### Engabebereich ######
-- Hier nichts verändern
GREETMOC =  {
-- MORGENtliche Grüße bitte hier drunter eintragen.
-- Wenn nötig einfach weitere Zeilen einfügen.



-- Ab hier bitte nichts mehr ändern.
};
GREETMITC = {
-- MITTAGSgrüße kommen hier drunter hin.



-- Hier nicht weiter schreiben.
};
GREETTAC = {
-- TAGSÜBER werden diese Texte gewählt.



-- Hier bitte nicht weiter schreiben
};
GREETABC = {
-- Texte für den ABEND bitte hier unten hin.



-- Das war's
};
