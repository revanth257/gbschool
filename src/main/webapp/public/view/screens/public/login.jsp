<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Set the path to the page-specific CSS
request.setAttribute("pageCss", "/public/css/screens/login.css");
%>
<%@ include file="../../common/header.jsp"%>

<main>
	<div class="login-container">
		<h2>Login to Your Account</h2>
		<form id="loginForm">
			<div class="input-group">
				<label for="email">Email or Username</label> <input type="text"
					id="email" name="email" placeholder="Enter email or username"
					required>
			</div>

			<div class="input-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" placeholder="Enter password" required>
			</div>

			<button type="submit" class="btn">Login</button>

			<div class="links">
				<a href="#" id="forgotPassword">Forgot Password?</a>
				<p>
					Don't have an account? <a href="#" id="signUp">Sign Up</a>
				</p>
			</div>
		</form>
	</div>
</main>
<%
// Set the path to the page-specific CSS
request.setAttribute("pageJs", "/public/javascript/screens/login.js");
%>
<%@ include file="../../common/footer.jsp"%>