IDENTIFICATION DIVISION.
PROGRAM-ID. exemple-variables.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
           
       01 Produits. 
           02 Produit OCCURS 2 TIMES INDEXED BY Idx.
               03 Nom-Produit PIC X(10).
               03 Quantite PIC 9(3).



PROCEDURE DIVISION.
      MOVE "banane" TO Nom-Produit OF Produit (1).
      MOVE 20 TO Quantite OF Produit (1).


      MOVE "pomme" TO Nom-Produit OF Produit (2).
      MOVE 33 TO Quantite OF Produit (2).

       PERFORM VARYING Idx FROM 1 BY 1 UNTIL Idx > 2
           DISPLAY "Produit : " Nom-Produit (Idx)       
           DISPLAY "Produit : " Quantite (Idx)       
       END-PERFORM.
