IDENTIFICATION DIVISION.
PROGRAM-ID. books.

DATA DIVISION.
WORKING-STORAGE SECTION.
       01 Livres. 
           02 Livre OCCURS 1 TO 100 TIMES DEPENDING ON NombreLivres INDEXED BY Idx.
               03 Titre PIC X(50).
               03 Auteur PIC X(30).
               03 AnneePublication PIC 9(4).
               03 NombreCopies PIC 9(3).
       01 NombreLivres PIC 9(5).

       01 TempTitre PIC X(50).
       01 TempAuteur PIC X(30).
       01 TempAnneePublication PIC 9(4).
       01 TempNombreCopies PIC 9(3).

       01 DisplayIndex PIC Z(3).

PROCEDURE DIVISION.
DEBUTER-PROGRAMME.
      PERFORM ENRENGISTREMENT-LIVRES
      PERFORM AFFICHAGE-LIVRES
      STOP RUN.


ENRENGISTREMENT-LIVRES.
       DISPLAY "Choisissez le nombre de livres à enregistrer"
       ACCEPT NombreLivres
       PERFORM VARYING Idx FROM 1 BY 1 UNTIL Idx > NombreLivres
       MOVE Idx TO DisplayIndex
       DISPLAY "Enregistrement du Livre " DisplayIndex
       DISPLAY "Entrer le titre du livre"
       ACCEPT TempTitre
       DISPLAY "Entrer l'auteur du livre"
       ACCEPT TempAuteur 
       DISPLAY "Entrer l'année de publication du livre"
       ACCEPT TempAnneePublication
       DISPLAY "Entrer le nombre de copies"
       ACCEPT TempNombreCopies
 
       MOVE TempTitre TO Titre(Idx)
       MOVE TempAuteur TO Auteur(Idx)
       MOVE TempAnneePublication TO AnneePublication(Idx)
       MOVE TempNombreCopies TO NombreCopies(Idx)
       END-PERFORM.


INITIALISATION.
           MOVE "1984" TO Titre  (1)
           MOVE "George Orwell" TO Auteur (1)
           MOVE 1949 TO AnneePublication (1)
           MOVE 5 TO NombreCopies (1)

           MOVE "Le Petit Prince" TO Titre (2)
           MOVE "Antoine de Saint-Exupéry" TO Auteur (2)
           MOVE 1943 TO AnneePublication (2)
           MOVE 3 TO NombreCopies (2)

           MOVE "Le Seigneur des Anneaux" TO Titre (3)
           MOVE "J.R.R. Tolkien" TO Auteur (3)
           MOVE 1954 TO AnneePublication (3)
           MOVE 7 TO NombreCopies (3)

           MOVE "Fondation" TO Titre (4)
           MOVE "Isaac Asimov" TO Auteur (4)
           MOVE 1951 TO AnneePublication (4)
           MOVE 4 TO NombreCopies (4)

           MOVE "Dune" TO Titre (5)
           MOVE "Frank Herbert" TO Auteur (5)
           MOVE 1965 TO AnneePublication (5)
           MOVE 6 TO NombreCopies (5).

       
AFFICHAGE-LIVRES.
MOVE 1 TO Idx
DISPLAY "Titre                     Auteur                         Année  Copies"
DISPLAY "-----------------------------------------------------------------------"
PERFORM VARYING Idx FROM 1 BY 1 UNTIL Idx > NombreLivres
       DISPLAY  Titre (Idx) "|" NO ADVANCING 
       DISPLAY  Auteur(Idx) "|" NO ADVANCING
       DISPLAY  AnneePublication(Idx) "|" NO ADVANCING   
END-PERFORM.
DISPLAY"-----------------------------------------------------------------------".




