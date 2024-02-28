       IDENTIFICATION DIVISION.
       PROGRAM-ID. SubProgram.
       
       DATA DIVISION.
       LINKAGE SECTION.
       01 LS-MONTANT PIC 9(5).

       PROCEDURE DIVISION USING LS-MONTANT.
           DISPLAY "SubProgram:  Montant reçu par le subprogram :", LS-MONTANT.
           STOP RUN.

           EXIT PROGRAM.
       END PROGRAM SubProgram.
