//%attributes = {"executedOnServer":true}
// The "Execute On Server" method property is set

#DECLARE($id : Text; $bTrace : Boolean) : Object

If ($bTrace)
	TRACE:C157
End if 

If (Session:C1714=Null:C1517)
	ALERT:C41("To test, launch this HDI on 4D Server")
	return 
End if 

// Retrieve the session storage for the session defined by $id
return Session storage by ID:C1839($id)