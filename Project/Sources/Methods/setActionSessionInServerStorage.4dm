//%attributes = {"executedOnServer":true}
#DECLARE($sessionID : Text; $user : Text)
var $col : Collection
var $o : Object

TRACE:C157

Use (Storage:C1525)
	If (Storage:C1525.sessions=Null:C1517)
		Storage:C1525.sessions:=New shared collection:C1527
	End if 
End use 


$col:=Storage:C1525.sessions

$o:=$col.find(Formula:C1597($1.value.ID=$2); $sessionID)
If ($o=Null:C1517)
	
	Use ($col)
		$col.push(New shared object:C1526("userName"; $user; "type"; "action"; "ID"; $sessionID))
	End use 
	
End if 
