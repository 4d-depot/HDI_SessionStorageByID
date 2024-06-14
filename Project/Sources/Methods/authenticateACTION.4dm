//%attributes = {"publishedWeb":true}
var $info : Object

$info:=New object:C1471()
$info.userName:="John Doe"
Session:C1714.setPrivileges($info)

setActionSessionInServerStorage(Session:C1714.id; $info.userName)

Use (Session:C1714.storage)
	Session:C1714.storage.settings:=New shared object:C1526("type"; "Action"; "name"; $info.userName; "text"; "Charlie")
End use 

WEB SEND HTTP REDIRECT:C659("/sessionInfo.shtml")