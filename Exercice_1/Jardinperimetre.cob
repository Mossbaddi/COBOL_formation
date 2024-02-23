       IDENTIFICATION DIVISION.
PROGRAM-ID. CalculPerimetre.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
       01 Longueur PIC 9(3).
       01 Largeur PIC 9(3).
       01 chaine PIC X(10).
       01 Perimetre PIC 9(4).

PROCEDURE DIVISION.
       DISPLAY "Entrez la longueur du jardin en metres: ".
       ACCEPT Longueur.
       DISPLAY "Entrez la largeur du jardin en metres: ".
       ACCEPT Largeur.

       COMPUTE Perimetre = 2 * (Longueur + Largeur).

       DISPLAY "Le périmètre du jardin est de ", Perimetre"mètres." .
