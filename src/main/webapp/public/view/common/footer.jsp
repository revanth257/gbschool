<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<footer>
	<div class="container-fluid">
		<!-- First Row with Map and Links -->
		<div class="row">
			<!-- Map Section -->
			<div class="col-md-4 footer">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d255407.55863754512!2d83.34849013284573!3d17.74234282981134!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a396700022fc263%3A0x2e1e7e90569747f!2sGolden%20Bridge%20School!5e0!3m2!1sen!2sin!4v1724690887689!5m2!1sen!2sin"
					width="100%" height="150px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade">
				</iframe>
			</div>
			<!-- Useful Links -->
			<div class="col-md-4 footer text-center">
				<span class="links" style="font-weight: 600;">Useful Links</span> <span
					class="links">Home</span> <span class="links">About Us</span> 
					<a href="/contactus"><span class="links">Contact Us</span></a>
					
				<!-- <span class="links">FAQ</span>
                <span class="links">Cookies</span> -->
			</div>
			<!-- Get in Touch -->
			<div class="col-md-4 footer">
				<span style="font-weight: 600;">Get in Touch</span><br> <span>12-81/3,
					Main Rd, opp. Star Clinic Hospital, Nethaji Nagar, Pulaganipalem,
					Pendurthi, Visakhapatnam, Andhra Pradesh 531173.</span><br> <span>+91
					9553123333</span><br> 
					<span class="social-icons"> <a href="#"><i
						class="fab fa-facebook-square fa-2x"></i></a> <a href="#"><i
						class="fab fa-instagram fa-2x"></i></a> <a href="#"><i
						class="fab fa-twitter-square fa-2x"></i></a>
				</span>
			</div>
		</div>

		<!-- Second Row with Terms, Cookies, FAQ -->
		<div class="row ">
			<div class="col-md-3 footer-links">
				<span class="footer-links">Terms & Conditions</span> <span
					class="footer-links">Cookies</span> <span class="footer-links">FAQ</span>
			</div>
			<div class="col-md-6 text-center">
				All Rights Reserved &copy; 2024 <a href="#">KRRSD</a>
			</div>
			<div class="col-md-3 powered-by">
				<div>Powered By</div>
				<img
					src="${pageContext.request.contextPath}/public/media/logo/logo.png"
					alt="KRRSD">
			</div>
		</div>
	</div>
</footer>

<!-- Scripts -->
<script
	src="${pageContext.request.contextPath}/public/javascript/vendor/jquery-3.7.1.slim.min.js"></script>
<script
	src="${pageContext.request.contextPath}/public/javascript/vendor/bootstrap.bundle.min.js"></script>
<script
	src="${pageContext.request.contextPath}/public/javascript/vendor/all.min.js"></script>
<script src="${pageContext.request.contextPath}${pageJs}"></script>
</body>
</html>