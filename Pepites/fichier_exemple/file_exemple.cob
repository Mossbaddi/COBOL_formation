IDENTIFICATION DIVISION.
PROGRAM-ID. file-exemple.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
       SELECT monfichier ASSIGN TO 'relative'
       ORGANIZATION IS RELATIVE.

DATA DIVISION.
FILE SECTION.
FD monfichier.
01 Personne.
      05 nom PIC X(20) VALUE SPACES.
      05 age PIC 9(2) VALUE ZEROES. 
01 Profession PIC X(20) VALUE SPACES.

WORKING-STORAGE SECTION.
       
      


PROCEDURE DIVISION.
       OPEN OUTPUT monfichier.

       MOVE "Mostapha            40" TO Personne
       WRITE Personne
       END-WRITE.
       MOVE "Developpeur" TO Profession
       WRITE Profession 
       END-WRITE.

       CLOSE monfichier.




      