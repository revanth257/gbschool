<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>G B School</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/public/css/vendor/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/public/css/common/all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/public/css/common/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/public/css/screens/header.css">
</head>

<body>
	
	<div id="main-content">
	
		<%
            // Get the page parameter from the URL to determine which page to show
            String pageParam = request.getParameter("page");
            if (pageParam == null) {
                pageParam = "home"; // Default page
            }

            // Include different JSP files based on the page parameter
            switch (pageParam) {
                case "home":
                    %><jsp:include page="/public/jsp/screens/home.jsp" />
		<%
                    break;
                case "about":
                    %><jsp:include page="/public/jsp/screens/about.jsp" />
		<%
                    break;
                case "gallery":
                    %><jsp:include
			page="/public/jsp/screens/gallery.jsp" />
		<%
                    break;
                case "admin/login":
                    %><jsp:include page="/public/jsp/screens/login.jsp" />
		<%
                    break;
                default:
                    %><jsp:include page="/public/jsp/screens/home.jsp" />
		<%
                    break;
            }
        %>

		
	</div>
	
</body>
<script
	src="${pageContext.request.contextPath}/public/javascript/vendor/bootstrap.bundle.min.js"></script>

</html>
