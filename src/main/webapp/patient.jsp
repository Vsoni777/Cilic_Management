<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- doccure/profile-settings.html  30 Nov 2019 04:12:18 GMT -->
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

<!-- Datetimepicker CSS -->
<link rel="stylesheet"
	href="assets/css/bootstrap-datetimepicker.min.css">

<!-- Select2 CSS -->
<link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

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

		<!-- Breadcrumb -->
		<div class="breadcrumb-bar">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-md-12 col-12">
						<nav aria-label="breadcrumb" class="page-breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Profile
									Settings</li>
							</ol>
						</nav>
						<h2 class="breadcrumb-title">Profile Settings</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- /Breadcrumb -->

		<!-- Page Content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">

					<!-- Profile Sidebar -->
					<%@include file="Psidebar.jsp"%>

					<!-- /Profile Sidebar -->
					<%
							String sms=(String)request.getAttribute("sms");
							if(sms!=null){
								out.println(sms);
							}
						%>
					<div class="col-md-7 col-lg-8 col-xl-9">
						<div class="card">
							<div class="card-body">

								<!-- Profile Settings Form -->
								<form action="PaitentServlet" method="post"
									enctype="multipart/form-data">
									<div class="row form-row">
										<div class="col-12 col-md-12">
											<div class="form-group">
												<div class="change-avatar">
													<div class="profile-img">
														<img src="assets/img/patients/patient.jpg"
															alt="User Image">
													</div>
													<div class="upload-img">
														<div>
															<span>Upload Photo</span> <input type="file" name="pimg">
														</div>
														<small class="form-text text-muted">Allowed JPG,
															GIF or PNG. Max size of 2MB</small>
													</div>
												</div>
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>First Name</label> <input type="text"
													class="form-control" name="fname">
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>Last Name</label> <input type="text"
													class="form-control" name="lname">
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>Date of Birth</label>
												<div>
													<input type="date" class="form-control " name="t1">
												</div>
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>Blood Group</label> <select
													class="form-control select" name="t2">
													<option>A-</option>
													<option>A+</option>
													<option>B-</option>
													<option>B+</option>
													<option>AB-</option>
													<option>AB+</option>
													<option>O-</option>
													<option>O+</option>
												</select>
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>Email ID</label> <input type="email"
													class="form-control" name="t3">
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>Mobile</label> <input type="text" name="t4"
													class="form-control">
											</div>
										</div>
										<div class="col-12">
											<div class="form-group">
												<label>Address</label> <input type="text"
													class="form-control" name="t5">
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>City</label> <input type="text" class="form-control"
													name="t6">
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>State</label> <input type="text" class="form-control"
													name="t7">
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>Zip Code</label> <input type="text"
													class="form-control" name="t8">
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="form-group">
												<label>Country</label> <input type="text"
													class="form-control" name="t9">
											</div>
										</div>
									</div>
									<div class="submit-section">
										<button type="submit" class="btn btn-primary submit-btn">Add
											details</button>
									</div>
								</form>
								<!-- /Profile Settings Form -->

							</div>
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

	<!-- Select2 JS -->
	<script src="assets/plugins/select2/js/select2.min.js"></script>

	<!-- Datetimepicker JS -->
	<script src="assets/js/moment.min.js"></script>
	<script src="assets/js/bootstrap-datetimepicker.min.js"></script>

	<!-- Sticky Sidebar JS -->
	<script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
	<script
		src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"></script>

</body>

<!-- doccure/profile-settings.html  30 Nov 2019 04:12:18 GMT -->
</html>