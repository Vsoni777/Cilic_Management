<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.DAO.Doctors"%>

<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<!-- doccure/booking.html  30 Nov 2019 04:12:16 GMT -->
<head>
<meta charset="utf-8">
<title>Doccure</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="assets/css/style.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

</head>
<body>

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<%@include file="Pheader.jsp"%>
		<!-- /Header -->


		<!-- /Breadcrumb -->

		<!-- Page Content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">

					<!-- Profile Sidebar -->
					<%@include file="Psidebar.jsp"%>
					<div class="col-md-7 col-lg-8 col-xl-9">

						<div class="row row-grid">

							<%            ArrayList<Doctors> al = (ArrayList<Doctors>) request.getAttribute("alldoctor");
							
							%>
							<% if(al!=null&&!al.isEmpty()){
									for(Doctors d:al){%>


							<div class="col-md-8 col-lg-6 col-xl-6">
								<div class="card widget-profile pat-widget-profile">
									<div class="card-body">

										<div class="pro-widget-content">
											<div class="profile-info-widget">
												<a href="patient-profile.jsp" class="booking-doc-img"> <img
													src="Uploaded/<%=d.getProfile_img() %>" alt="User Image">
												</a>
												<div class="profile-det-info">
													<h3><%=d.getFname() %><%=d.getLname() %>
													</h3>

													<div class="patient-details">
														<h5>
															<b>Doctor ID :</b> D00<%=d.getDoctor_id()%></h5>
														<h5 class="mb-0">
															<b name="t2"><%=d.getUsername()%></b><%=d.getGender() %></h5>
													</div>
												</div>
											</div>
										</div>
										<div class="patient-info">
											<ul>
												<li>Phone <span><%=d.getMno() %></span></li>
												<li>DOB <span><%=d.getDob() %></span></li>
												<li>Introduction<span><%=d.getBiography() %></span></li>
											</ul>
										</div>
										<div>
											<a href="ToAppointmentServlet?docid=<%=d.getDoctor_id()%>"><button
													class="btn btn-rounded btn-outline-info mb-2">Book
													appointment</button></a> <a href="login.jsp"><button
													class="btn btn-rounded btn-outline-info">view
													Doctor details</button></a>
										</div>

									</div>
								</div>
							</div>
							<% }
       						} else { %>
							<div class="col-12">
								<p>No Doctor found.</p>
							</div>
							<% } %>


						</div>

					</div>

				</div>

			</div>
		</div>
		<!-- /Page Content -->

		<!-- Footer -->
		<%@include file="Footer.jsp"%>

		<!-- /Footer -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="assets/js/jquery.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"></script>

</body>

<!-- doccure/booking.html  30 Nov 2019 04:12:16 GMT -->
</html>