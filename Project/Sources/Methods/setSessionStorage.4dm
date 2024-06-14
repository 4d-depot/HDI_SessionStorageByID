//%attributes = {"executedOnServer":true}
// The "Execute On Server" method property is set

#DECLARE($id : Text; $text : Text; $bTrace : Boolean)
var $obj : Object

If ($bTrace)
	TRACE:C157
End if 

$obj:=Session storage by ID:C1839($id)

If ($obj.settings=Null:C1517)
	
	Use ($obj)
		$obj.settings:=New shared object:C1526("text"; $text)
	End use 
	
Else 
	
	Use ($obj.settings)
		$obj.settings.text:=$text
	End use 
	
End if 
