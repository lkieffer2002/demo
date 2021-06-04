 
/*------------------------------------------------------------------------
   File        : MyCustomer
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : Administrator
   Created     : Mon May 31 15:13:31 UTC 2021
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS src.MyCustomer: 

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    DEFINE TEMP-TABLE ttcustomer LIKE Customer.

    METHOD PUBLIC VOID ReadCustomer(INPUT filterName AS CHARACTER , OUTPUT table ttcustomer ):
        MESSAGE "Read customer"
        VIEW-AS ALERT-BOX.
        FOR EACH customer WHERE customer.name BEGINS filterName NO-LOCK:
            CREATE ttcustomer.
            BUFFER-COPY customer TO ttcustomer.   
        END.
            
        RETURN.

    END METHOD.

END CLASS.