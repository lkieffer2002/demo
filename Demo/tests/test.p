 
/*------------------------------------------------------------------------
   File        : test.p 
   Syntax      : 
   Author(s)   : Administrator
   Created     : Thu Jun 03 13:03:04 UTC 2021
   Notes       : 
 ----------------------------------------------------------------------*/
USING OpenEdge.Core.Assert FROM PROPATH.
USING Progress.Lang.AppError.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE ix       AS INTEGER   NO-UNDO.
DEFINE VARIABLE n        AS INTEGER   NO-UNDO LABEL "N" FORMAT "->9".
DEFINE VARIABLE nfact    AS INTEGER   NO-UNDO LABEL "N Factorial" FORMAT ">,>>>,>>>,>>9". 
DEFINE VARIABLE nom      AS CHARACTER.
DEFINE VARIABLE longueur AS INTEGER.


//@Test(Expected="AppError").
@Test.
PROCEDURE test1:
    nom = "Laurent".
    
          
    RUN atester.p (INPUT nom, OUTPUT longueur).  
    Assert:EQUALS (longueur,7).

END PROCEDURE. 

@Test .
PROCEDURE test2:
    nom = "Laurent".
    
          
    RUN atester.p (INPUT nom, OUTPUT longueur).  
    Assert:EQUALS (longueur,2).

END PROCEDURE. 


/*@Test.                                   */
/*PROCEDURE test2:                         */
/*    n = 10.                              */
/*    ASSIGN                               */
/*        nfact = n.                       */
/*    RUN Factorial.p (INPUT-OUTPUT nfact).*/
/*    Assert:EQUALS (3628800,nfact).       */
/*                                         */
/*END PROCEDURE.                           */
/*                                         */
/*                                         */
/*@Test(Expected="AppError").              */
/*PROCEDURE testErr:                       */
/*    n = 23.                              */
/*    ASSIGN                               */
/*        nfact = n.                       */
/*    RUN Factorial.p (INPUT-OUTPUT nfact).*/
/*    Assert:equals(nfact,n).              */
/*                                         */
/*END PROCEDURE.                           */
