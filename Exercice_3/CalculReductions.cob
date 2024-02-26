       IDENTIFICATION DIVISION.
       PROGRAM-ID. CalculReductions.


       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MontantAchat PIC 9(3)V99 COMP. 
       01 Reduction PIC 9(3)V99 COMP VALUE ZERO.
       01 Tmp PIC 9(3)V99 COMP VALUE ZERO.
       01 MontantFinal PIC 9(3)V99 .
       01 PourcentageReduction PIC 9(3)V99 VALUE ZERO.
       


       PROCEDURE DIVISION.
       TRAITEMENT.
           DISPLAY "Entrez le montant total de votre achat : ".
           ACCEPT MontantAchat.

      *>    IF MontantAchat < 100 THEN
      *>        DISPLAY "Aucune réduction"
      *>        CONTINUE (autre option)
      *>    ELSE IF MontantAchat < 500 AND MontantAchat > 100
      *>        MOVE 5 TO PourcentageReduction
      *>    ELSE
      *>        MOVE 10 TO PourcentageReduction 

           IF MontantAchat > 500 THEN 
               MOVE 10 TO PourcentageReduction
           ELSE IF MontantAchat >= 100 THEN
               MOVE 5 TO PourcentageReduction
           END-IF.


           COMPUTE Reduction = MontantAchat * (PourcentageReduction / 100).
           DISPLAY "Reduction : ", Reduction
           COMPUTE MontantFinal =  MontantAchat - Reduction.


           DISPLAY "Réduction appliquée : ", PourcentageReduction, "%". 
           DISPLAY "Montant de la réduction : ", Reduction.
           DISPLAY "Montant après réduction : ", MontantFinal.
           STOP RUN.  
