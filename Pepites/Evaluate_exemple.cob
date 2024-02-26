       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exempleevaluate.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 choix PIC 9(2).

       PROCEDURE DIVISION.
       MYMENU.

           DISPLAY "Entrez un chiffre de 1 à 7, et vous afficherez le jour correspondant. entre 8 pour quitter."
           ACCEPT choix
           EVALUATE choix 
               WHEN 1 
                   PERFORM AFFICHERLUNDI
               WHEN 2 
                   PERFORM AFFICHERMARDI
               WHEN 3 
                   PERFORM AFFICHERMERCREDI
               WHEN 4 
                   PERFORM AFFICHERJEUDI
               WHEN 5 
                   PERFORM AFFICHERVENDREDI
               WHEN 6 
                   PERFORM AFFICHERSAMEDI
               WHEN 7
                   PERFORM AFFICHERDIMANCHE 
               WHEN 8 
                   GOBACK
               WHEN OTHER
                   DISPLAY "choix non valide"
            END-EVALUATE.
           PERFORM MYMENU.
           
           
           AFFICHERLUNDI.
               DISPLAY "Lundi".
               PERFORM MYMENU.
           AFFICHERMARDI.
               DISPLAY "Mardi".
               PERFORM MYMENU.
           AFFICHERMERCREDI.
               DISPLAY "Mercredi".
               PERFORM MYMENU.
           AFFICHERJEUDI.
               DISPLAY "Jeudi".
               PERFORM MYMENU.
           AFFICHERVENDREDI.
               DISPLAY "Vendredi".
               PERFORM MYMENU.
           AFFICHERSAMEDI.
               DISPLAY "Samedi".
               PERFORM MYMENU.
           AFFICHERDIMANCHE.
               DISPLAY "Dimanche".
               PERFORM MYMENU.
       
           
      
                                                                                                    