If (Form:C1466.trace)
	TRACE:C157
End if 

If (Form:C1466.current#Null:C1517)
	setSessionStorage1(Form:C1466.current.ID; Form:C1466.text; Form:C1466.trace)
End if 
