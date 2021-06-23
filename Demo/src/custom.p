
/*------------------------------------------------------------------------
    File        : custom.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : Administrator
    Created     : Tue Sep 04 14:53:34 UTC 2018
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
MESSAGE "test"
    VIEW-AS ALERT-BOX.
MESSAGE "test2"
    VIEW-AS ALERT-BOX.
MESSAGE "ok"
    VIEW-AS ALERT-BOX.
DEFINE VARIABLE test AS CHARACTER.
test = "1".
MESSAGE test
    VIEW-AS ALERT-BOX.
FOR EACH customer  NO-LOCK:
    DISPLAY name.
END.
    
