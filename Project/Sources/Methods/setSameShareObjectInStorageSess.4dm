//%attributes = {"executedOnServer":true}
// The "Execute On Server" method property is set

#DECLARE($sessions : Collection; $bTrace : Boolean)

If (Session:C1714=Null:C1517)
	ALERT:C41("To test, launch this HDI on 4D Server")
	return 
End if 

If ($bTrace)
	TRACE:C157
End if 

$same:=New shared object:C1526("text"; "Alpha")

// Set the shared object $same in the storage for each session 
For each ($col; $sessions)
	
	$obj:=Session storage by ID:C1839($col.ID)
	
	Use ($obj)
		$obj.same:=$same
	End use 
	
End for each 