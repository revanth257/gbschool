<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Set the path to the page-specific CSS
request.setAttribute("pageCss", "/public/css/screens/contactus.css");
%>
<%@ include file="../../common/header.jsp"%>

<main>
	<div class="container mt-5">
		<h1 class="text-center mb-4">Contact Us</h1>
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form id="contactForm">
					<!-- Name -->
					<div class="form-group">
						<label for="name"> <i class="fas fa-user"></i> Full Name <span
							class="text-danger">*</span>
						</label> <input type="text" class="form-control" id="name"
							placeholder="Enter your full name" required> <small
							class="form-text text-muted">This field is mandatory.</small>
					</div>
					<!-- Phone -->
					<div class="form-group">
						<label for="phone"> <i class="fas fa-phone-alt"></i> Phone
							Number <span class="text-danger">*</span>
						</label> <input type="tel" class="form-control" id="phone"
							placeholder="Enter your phone number" required> <small
							class="form-text text-muted">This field is mandatory.</small>
					</div>
					<!-- Email -->
					<div class="form-group">
						<label for="email"> <i class="fas fa-envelope"></i> Email
							(Optional)
						</label> <input type="email" class="form-control" id="email"
							placeholder="Enter your email (if any)">
					</div>
					<!-- Description -->
					<div class="form-group">
						<label for="description"> <i class="fas fa-info-circle"></i>
							Purpose / Description
						</label>
						<textarea class="form-control" id="description" rows="4"
							placeholder="Briefly explain the purpose of your contact"></textarea>
					</div>
					<!-- Submit Button -->
					<button type="submit" class="btn btn-primary btn-block">
						<i class="fas fa-paper-plane"></i> Submit
					</button>
				</form>
			</div>
		</div>
	</div>
</main>

<%
// Set the path to the page-specific CSS
request.setAttribute("pageJs", "/public/javascript/screens/contactus.js");
%>
<%@ include file="../../common/footer.jsp"%>