<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Main Page</title>
	<script>
		function join(){
			var action = document.getElementById("mainForm");
			action.action = "join";
			action.submit();
		}
		
		function login(){
			var action = document.getElementById("mainForm");
			action.action = "login";
			action.submit();
		}
	</script>
</head>
<body>
	<h1>Main Page</h1>
	<form id="mainForm" action="none" method="get">
		<input type="submit" value="Join" onclick="join()"/>
		<input type="submit" value="Login" onclick="login()"/>
	</form>
</body>

</html>
