<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Set the path to the page-specific CSS
request.setAttribute("pageCss", "/public/css/screens/signup.css");
%>
<%@ include file="../../common/header.jsp"%>

<main>
	<div class="container mt-5 signupbody">
		<h1 class="text-center mb-4">User Registration</h1>
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form action="${pageContext.request.contextPath}/user" method="post">
					<input type="hidden" name="action" value="register">
					<!-- Name -->
					<div class="form-group">
						<label for="name"> <i class="fas fa-user"></i> Full Name <span
							class="text-danger">*</span>
						</label> <input type="text" class="form-control" id="name" name="name"
							placeholder="Enter your full name" required>
					</div>
					<!-- Phone -->
					<div class="form-group">
						<label for="phone"> <i class="fas fa-phone-alt"></i> Phone
							Number <span class="text-danger">*</span>
						</label> <input type="tel" class="form-control" id="phone" name="phone"
							placeholder="Enter your phone number" required>
					</div>
					<!-- Email -->
					<div class="form-group">
						<label for="email"> <i class="fas fa-envelope"></i> Email
							<span class="text-danger">*</span>
						</label> <input type="email" class="form-control" id="email" name="email"
							placeholder="Enter your email" required>
					</div>
					<!-- Password -->
					<div class="form-group">
						<label for="password"> <i class="fas fa-lock"></i>
							Password <span class="text-danger">*</span>
						</label> <input type="password" class="form-control" id="password"
							name="password" placeholder="Create a password" required>
					</div>
					<!-- Hidden Fields -->
					<input type="hidden" name="user_type" value="CUSTM">
					<!-- Submit Button -->
					<button type="submit" class="btn btn-primary btn-block">
						<i class="fas fa-user-plus"></i> Register
					</button>
				</form>
				<p class="text-center mt-3">
					Already registered? <a href="login">Login here</a>.
				</p>
			</div>
		</div>
	</div>
</main>

<%
// Set the path to the page-specific CSS
request.setAttribute("pageJs", "/public/javascript/screens/signup.js");
%>
<%@ include file="../../common/footer.jsp"%>