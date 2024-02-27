       IDENTIFICATION DIVISION.
       PROGRAM-ID. GestionCompteBancaire.
       
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SoldeCompte PIC 9(5)V99 VALUE 1000.00.
       01 MontantDepot PIC 9(5)V99. 
       01 MontantVirement PIC 9(5)V99.
       01 MontantRetrait PIC 9(5)V99.
       01 SoldeCompteSecond PIC 9(5)V99 VALUE 500.00.
       01 Choix PIC 9 VALUE ZERO.

       01 MenuOptions PIC X(250).
       01  saut-de-ligne           PIC X VALUE X'0A'.


       PROCEDURE DIVISION.
       STRING "**********MENU**********", saut-de-ligne
        "1. Afficher Solde", saut-de-ligne
        "2. Faire un dépôt", saut-de-ligne
        "3. Faire un retrait", saut-de-ligne
        "4. Faire un virement", saut-de-ligne
        "5. Quitter"
           INTO MenuOptions.




       TRAITEMENT-PRINCIPAL.
           PERFORM MENU-OPERATIONS.
       STOP RUN.
              

       DEPOT.
           DISPLAY "Donnez le montant de votre dépôt"
           ACCEPT MontantDepot.
           COMPUTE SoldeCompte = SoldeCompte + MontantDepot.
           *>ADD MontantDepot TO SoldeCompte peut être plus lisible ici
       

       RETRAIT.
           DISPLAY "Donnez le montant de votre retrait"
           ACCEPT MontantRetrait
           IF SoldeCompte >= MontantRetrait  THEN
               COMPUTE SoldeCompte = SoldeCompte - MontantDepot
           ELSE 
               DISPLAY "Erreur: Solde Insuffisant"
           END-IF.


       VIREMENT.
           DISPLAY "Donnez le montant de votre virement "
           ACCEPT MontantVirement.
           IF SoldeCompte >= MontantVirement THEN
               COMPUTE SoldeCompte = SoldeCompte - MontantVirement
               COMPUTE SoldeCompteSecond = SoldeCompteSecond + MontantVirement
           ELSE 
               DISPLAY "Erreur: Solde insuffisant"
           END-IF.


       AFFICHER-SOLDE.
           DISPLAY SoldeCompte.
           DISPLAY SoldeCompteSecond.


       MENU-OPERATIONS.
       


       DISPLAY MenuOptions

                           

       ACCEPT Choix.
       EVALUATE Choix
           WHEN 1 PERFORM AFFICHER-SOLDE
           WHEN 2 PERFORM DEPOT
           WHEN 3 PERFORM RETRAIT
           WHEN 4 PERFORM VIREMENT
           WHEN 5 GOBACK
           WHEN OTHER
               DISPLAY "Choix Invalide."
       END-EVALUATE
       PERFORM MENU-OPERATIONS.


