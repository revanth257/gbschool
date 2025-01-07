<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Set the path to the page-specific CSS
request.setAttribute("pageCss", "/public/css/screens/gallery.css");
%>
<%@ include file="../../common/header.jsp"%>

<main>
	<div class="row gallery-theme">
		<div>
			<h1 style="color: black">Photo Gallery</h1>
		</div>
		<div class="row">
			<div class="col-md-9"></div>

			<div class="col-md-3 filterDiv">
				<h3>Filter:</h3>
				<select class="form-select" aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
			</div>
		</div>
		<div class="accordion" id="accordionPanelsStayOpenExample">
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false"
						aria-controls="panelsStayOpen-collapseOne">
						Ugadi</button>
				</h2>
				<div id="panelsStayOpen-collapseOne"
					class="accordion-collapse collapse hide">
					<div class="accordion-body">
						<button type="button" class="btn btn-outline-success btn-right"
							style="margin: 12px 10px 12px 0px">
							Download</button>
						<div class="gallery" style="margin-top: 46px">
							<div id="image-gallery" class="images"></div>
							<div id="gallery-pagination">
								<button id="btnPrevious">
									&larr; <span class="sr-only">Previous</span>
								</button>
								<div>
									<div id="gallery-dots"></div>
									<span id="page"></span>
								</div>
								<button id="btnNext">
									<span class="sr-only">Next </span>&rarr;
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="accordion" id="accordionPanelsStayOpenExample">
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button" type="button"
						data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="true"
						aria-controls="panelsStayOpen-collapseTwo">
						Christmas</button>
				</h2>
				<div id="panelsStayOpen-collapseTwo"
					class="accordion-collapse collapse show">
					<div class="accordion-body">
						<button type="button" class="btn btn-outline-success btn-right"
							style="margin: 12px 10px 12px 0px">
							Download</button>
						<div class="gallery" style="margin-top: 46px">
							<div id="image-gallery" class="images"></div>
							<div id="gallery-pagination">
								<button id="btnPrevious">
									&larr; <span class="sr-only">Previous</span>
								</button>
								<div>
									<div id="gallery-dots"></div>
									<span id="page"></span>
								</div>
								<button id="btnNext">
									<span class="sr-only">Next </span>&rarr;
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<%
// Set the path to the page-specific CSS
request.setAttribute("pageJs", "/public/javascript/screens/gallery.js");
%>
<%@ include file="../../common/footer.jsp"%>