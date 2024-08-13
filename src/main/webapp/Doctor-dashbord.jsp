<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- doccure/doctor-dashboard.html  30 Nov 2019 04:12:03 GMT -->
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
		<%@include file="Header.jsp"%>
		<!-- /Header -->

		<!-- Breadcrumb -->
		<div class="breadcrumb-bar">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-md-12 col-12">
						<nav aria-label="breadcrumb" class="page-breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
							</ol>
						</nav>
						<h2 class="breadcrumb-title">Dashboard</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- /Breadcrumb -->

		<!-- Page Content -->
		<div class="content">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">

						<!-- Profile Sidebar -->
						<%@include file="Dsidebar.jsp"%>
						<!-- /Profile Sidebar -->

					</div>

					<div class="col-md-7 col-lg-8 col-xl-9">

						<div class="row">
							<div class="col-md-12">
								<div class="card dash-card">
									<div class="card-body">
										<div class="row">
											<div class="col-md-12 col-lg-4">
												<div class="dash-widget dct-border-rht">
													<div class="circle-bar circle-bar1">
														<div class="circle-graph1" data-percent="75">
															<img src="assets/img/icon-01.png" class="img-fluid"
																alt="patient">
														</div>
													</div>
													<div class="dash-widget-info">
														<h6>Total Patient</h6>
														<h3>1500</h3>
														<p class="text-muted">Till Today</p>
													</div>
												</div>
											</div>

											<div class="col-md-12 col-lg-4">
												<div class="dash-widget dct-border-rht">
													<div class="circle-bar circle-bar2">
														<div class="circle-graph2" data-percent="65">
															<img src="assets/img/icon-02.png" class="img-fluid"
																alt="Patient">
														</div>
													</div>
													<div class="dash-widget-info">
														<h6>Today Patient</h6>
														<h3>160</h3>
														<p class="text-muted">06, Nov 2019</p>
													</div>
												</div>
											</div>

											<div class="col-md-12 col-lg-4">
												<div class="dash-widget">
													<div class="circle-bar circle-bar3">
														<div class="circle-graph3" data-percent="50">
															<img src="assets/img/icon-03.png" class="img-fluid"
																alt="Patient">
														</div>
													</div>
													<div class="dash-widget-info">
														<h6>Appoinments</h6>
														<h3>85</h3>
														<p class="text-muted">06, Apr 2019</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<h4 class="mb-4">Patient Appoinment</h4>
								<div class="appointment-tab">

									<!-- Appointment Tab -->

									<!-- /Today Appointment Tab -->

								</div>
							</div>
						</div>

					</div>

				</div>

			</div>
			<!-- /Page Content -->
		</div>
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

	<!-- Sticky Sidebar JS -->
	<script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
	<script
		src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

	<!-- Circle Progress JS -->
	<script src="assets/js/circle-progress.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"></script>

</body>

<!-- doccure/doctor-dashboard.html  30 Nov 2019 04:12:09 GMT -->
</html>