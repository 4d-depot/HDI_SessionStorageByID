//%attributes = {"executedOnServer":true}
// The "Execute On Server" method property is set

#DECLARE($id : Text; $text : Text; $bTrace : Boolean)
var $obj : Object

If ($bTrace)
	TRACE:C157
End if 

$obj:=Session storage by ID:C1839($id)

Use ($obj.same)
	$obj.same.text:=$text
End use 

