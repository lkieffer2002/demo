 
 /*------------------------------------------------------------------------
    File        : Form1
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : 
    Created     : 
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Progress.Windows.Form.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Form1 INHERITS Form: 
	
	DEFINE PRIVATE VARIABLE components AS System.ComponentModel.IContainer NO-UNDO.
    DEFINE PRIVATE VARIABLE radButton1 AS Telerik.WinControls.UI.RadButton NO-UNDO.
		
	CONSTRUCTOR PUBLIC Form1 (  ):

        InitializeComponent().
        THIS-OBJECT:ComponentsCollection:Add(THIS-OBJECT:components).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.

	END CONSTRUCTOR.

	METHOD PRIVATE VOID InitializeComponent(  ):
		
        /* NOTE: The following method is automatically generated.
        
        We strongly suggest that the contents of this method only be modified using the
        Visual Designer to avoid any incompatible modifications.
        
        Modifying the contents of this method using a code editor will invalidate any support for this file. */
        THIS-OBJECT:radButton1 = NEW Telerik.WinControls.UI.RadButton().
        CAST(THIS-OBJECT:radButton1, System.ComponentModel.ISupportInitialize):BeginInit().
        THIS-OBJECT:SuspendLayout().
        /*  */
        /* radButton1 */
        /*  */
        THIS-OBJECT:radButton1:Location = NEW System.Drawing.Point(157, 30).
        THIS-OBJECT:radButton1:Name = "radButton1".
        THIS-OBJECT:radButton1:Size = NEW System.Drawing.Size(137, 30).
        THIS-OBJECT:radButton1:TabIndex = 0.
        THIS-OBJECT:radButton1:Text = "radButton1".
        /*  */
        /* Form1 */
        /*  */
        THIS-OBJECT:ClientSize = NEW System.Drawing.Size(292, 266).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:radButton1).
        THIS-OBJECT:Name = "Form1".
        THIS-OBJECT:Text = "Form1".
        CAST(THIS-OBJECT:radButton1, System.ComponentModel.ISupportInitialize):EndInit().
        THIS-OBJECT:ResumeLayout(FALSE).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.
	END METHOD.

	DESTRUCTOR PUBLIC Form1 ( ):

	END DESTRUCTOR.

END CLASS.