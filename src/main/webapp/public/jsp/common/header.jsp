<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>G B School</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/common/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/screens/header.css">
</head>
<body>
    <div class="row" id="header">
        <div class="row no-gutters" id="socialMediaStrip">
            <div class="col-md-4 socialMediaStrip" id="mediaLast">
                <a href="#"><i class="fab fa-facebook-square fa-2x"></i></a>
                <a href="#"><i class="fab fa-instagram fa-2x"></i></a>
                <a href="#"><i class="fab fa-twitter-square fa-2x"></i></a>
            </div>
            <div class="col-md-4 socialMediaStrip">
            </div>
            <div class="col-md-4 socialMediaStrip" id="contactinfo">
                <span>7382986355</span>
                <span>revanthkishore1@gmail.com</span>
            </div>
        </div>
        <div class="row" id="logoStrip">
            <div class="col-md-4">
                <img src="${pageContext.request.contextPath}/public/media/common/hogwarts-school.png" alt="Golden Bridge School" 
                     style="height: 160px; width: 180px; margin-left: 46px;">
            </div>
            <div class="col-md-8">
                <div class="row" style="height: 80px;">
                    <h1 style="font-size: 72px;">GOLDEN BRIDGE SCHOOL</h1>
                </div>
                <div class="row" style="height: 40px; text-align: end; margin-right: 16%;">
                    <h5 style="color: #254B21; font-style: italic;">First step of your little one...</h5>
                </div>
                <div class="row" id="menuStrip">
                    <nav>
                        <a href="${pageContext.request.contextPath}/home.jsp">HOME</a>
                        <a href="${pageContext.request.contextPath}/about.jsp">About us</a>
                        <a href="${pageContext.request.contextPath}/gallery.jsp">Gallery</a>
                        <a href="${pageContext.request.contextPath}/login.jsp">Login</a>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/public/javascript/vendor/bootstrap.bundle.min.js"></script>
</body>
</html>
