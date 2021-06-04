
/*------------------------------------------------------------------------
    File        : atester.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : Administrator
    Created     : Thu Jun 03 13:00:26 UTC 2021
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE INPUT PARAMETER vin AS CHARACTER.
DEFINE OUTPUT PARAMETER vout as integer.
/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
 vout = LENGTH(vin).