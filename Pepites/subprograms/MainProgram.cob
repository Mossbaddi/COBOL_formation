       IDENTIFICATION DIVISION.
       PROGRAM-ID. MainProgram.
       
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Montant PIC 9(5) VALUE 500.
       
       PROCEDURE DIVISION.
       DISPLAY "Utilisation  du main Program".
       DISPLAY "VAleur passée en paramètre : ", Montant.
       
              CALL 'SubProgram' USING Montant.
              STOP RUN.
              