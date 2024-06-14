var $url : Text
var $result : Object
var $body : Collection

If (Form:C1466.trace)
	TRACE:C157
End if 

$url:="127.0.0.1:80/rest/$catalog/authentify"
$HTTPStatus:=HTTP Request:C1158(HTTP POST method:K71:2; $url; $body; $result)
