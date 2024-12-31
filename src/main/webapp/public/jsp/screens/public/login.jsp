<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Set the path to the page-specific CSS
request.setAttribute("pageCss", "/public/css/screens/login.css");
%>
<%@ include file="../../common/header.jsp"%>

<main>
	<form action="user" method="post">
		<input type="hidden" name="action" value="login" /> <label>Username</label>
		<input type="text" name="username"> <label>Password</label> <input
			type="text" name="password"> <input type="submit">
	</form>

</main>
<%@ include file="../../common/footer.jsp"%>