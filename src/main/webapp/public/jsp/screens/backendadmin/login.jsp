<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<form action="user" method="post">
		<input type="hidden" name="action" value="login" /> <label>Username</label>
		<input type="text" name="username"> <label>Password</label> <input
			type="text" name="password"> <input type="submit">
	</form>

</body>

</html>