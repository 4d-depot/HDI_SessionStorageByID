//%attributes = {"executedOnServer":true}
// The "Execute On Server" method property is set

#DECLARE($bTrace : Boolean) : Collection

var $session; $actionSession : Collection

If ($bTrace)
	TRACE:C157
End if 

If (Session:C1714=Null:C1517)
	ALERT:C41("To test, launch this HDI on 4D Server")
	return 
End if 

// Retrieve the session list of 4D Remote, Stored Procedure, REST
$session:=Get process activity:C1495(Sessions only:K5:36).sessions

// Retrieve the session list of 4D ACTION
$actionSession:=Storage:C1525.sessions

return $session.combine($actionSession)