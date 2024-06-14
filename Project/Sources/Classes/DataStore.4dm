Class extends DataStoreImplementation

exposed Function authentify()
	
	var $info : Object
	
	$info:=New object:C1471()
	$info.userName:="Jerry Martin"
	$info.roles:="Admin"
	Session:C1714.setPrivileges($info)
	
	Use (Session:C1714.storage)
		Session:C1714.storage.settings:=New shared object:C1526("text"; "Bravo")
	End use 