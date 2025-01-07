<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Set the path to the page-specific CSS
request.setAttribute("pageCss", "/public/css/screens/aboutus.css");
%>
<%@ include file="../../common/header.jsp"%>

<main>
	<div class="header">
		<div class="container">
			<h1>
				Welcome to <span>Golden Bridge School</span>
			</h1>
			<p>First Step of your little one...</p>
		</div>
	</div>

	<div class="about">
		<div class="container">
			<h2>About Us</h2>
			<p>
				At <strong>Little Learners Academy</strong>, we believe in the power
				of early education and the joy of discovering the world through
				play. Our play school provides a nurturing, safe, and stimulating
				environment for children aged 2 to 5 years, fostering curiosity,
				creativity, and confidence.
			</p>
			<div class="about-content">
				<div class="about-image">
					<img
						src="${pageContext.request.contextPath}/public/media/common/playSchool.jpg"
						alt="Happy Kids Learning">
				</div>
				<div class="about-text">
					<h3>Why Choose Us?</h3>
					<ul>
						<li><i class="fas fa-check-circle"></i> Engaging activities
							designed to develop cognitive, social, and emotional skills.</li>
						<li><i class="fas fa-check-circle"></i> Qualified and caring
							teachers who create a joyful learning atmosphere.</li>
						<li><i class="fas fa-check-circle"></i> Modern classrooms
							equipped with age-appropriate learning materials.</li>
						<li><i class="fas fa-check-circle"></i> Safe indoor and
							outdoor play areas for physical and social development.</li>
						<li><i class="fas fa-check-circle"></i> A focus on holistic
							growth through arts, music, storytelling, and STEM activities.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="vision-mission">
		<div class="container">
			<div class="vision">
				<h3>Our Vision</h3>
				<p>To nurture young minds and inspire a lifelong love for
					learning in a playful and inclusive environment.</p>
			</div>
			<div class="mission">
				<h3>Our Mission</h3>
				<p>We aim to provide a child-centric curriculum that balances
					learning and play, ensuring every child feels valued, happy, and
					ready to embrace their future.</p>
			</div>
		</div>
	</div>

</main>
<%
// Set the path to the page-specific CSS
request.setAttribute("pageJs", "/public/javascript/screens/aboutus.js");
%>
<%@ include file="../../common/footer.jsp"%>