
/*------------------------------------------------------------------------
    File        : custom.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : laurent
    Created     : Thu Jun 17 15:37:09 CEST 2021
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */
using OpenEdge.BusinessRules.*.

/* ***************************  Main Block  *************************** */

USING OpenEdge.BusinessRules.DecisionService.
USING OpenEdge.BusinessRules.RulesServerConnectionParameters.
USING OpenEdge.BusinessRules.RulesServerConnection.
USING Progress.Json.ObjectModel.JsonObject.
USING Progress.Lang.AppError.

DEFINE VARIABLE oOptions AS JsonObject NO-UNDO.
DEFINE VARIABLE oParams AS RulesServerConnectionParameters NO-UNDO.
DEFINE VARIABLE oConnection AS RulesServerConnection NO-UNDO.
DEFINE VARIABLE decisionservice AS DecisionService NO-UNDO.
DEFINE VARIABLE dVersion AS DECIMAL NO-UNDO.
DEFINE VARIABLE cServiceName AS CHARACTER NO-UNDO.

oOptions = NEW JsonObject().
oOptions:Add('URL', 'http://localhost:8850/axis/corticon/execute').
oParams = NEW RulesServerConnectionParameters(oOptions).
oConnection = NEW RulesServerConnection(oParams).
dVersion = 1.
cServiceName = 'RiskRating'.

decisionservice = NEW DecisionService(oConnection, cServiceName, dVersion).

CATCH oAppError AS AppError:
    MESSAGE 
        oAppError:ReturnValue
        VIEW-AS ALERT-BOX.
END CATCH.
