<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div align="center">
		<form action="processLogin.jsp" method="post">
			<table class="loginForm">
				<tr>
					<td><label for="userName">User Name</label></td>
					<td><input type="text" id="userName" name="userName" class="searchTextField"/></td>
				</tr>
				<tr>
					<td><label for="password">Password</label></td>
					<td><input type="password" id="password" name="password" class="searchTextField"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="Login" class="actionBtn" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>