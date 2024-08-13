<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- doccure/doctor-profile-settings.html  30 Nov 2019 04:12:14 GMT -->
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

<!-- Select2 CSS -->
<link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css">

<link rel="stylesheet" href="assets/plugins/dropzone/dropzone.min.css">

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
					<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">

						<!-- Profile Sidebar -->
						<div class="profile-sidebar">
							<div class="widget-profile pro-widget-content">
								<div class="profile-info-widget">
									<a href="#" class="booking-doc-img"> <img
										src="assets/img/doctors/doctor-thumb-02.jpg" alt="User Image">
									</a>
									<div class="profile-det-info">
										<h3>Dr. Darren Elder</h3>

										<div class="patient-details">
											<h5 class="mb-0">BDS, MDS - Oral & Maxillofacial Surgery</h5>
										</div>
									</div>
								</div>
							</div>
							<div class="dashboard-widget">
								<nav class="dashboard-menu">
									<ul>
										<li><a href="doctor-dashboard.html"> <i
												class="fas fa-columns"></i> <span>Dashboard</span>
										</a></li>
										<li><a href="appointments.html"> <i
												class="fas fa-calendar-check"></i> <span>Appointments</span>
										</a></li>
										<li><a href="my-patients.html"> <i
												class="fas fa-user-injured"></i> <span>My Patients</span>
										</a></li>
										<li><a href="schedule-timings.html"> <i
												class="fas fa-hourglass-start"></i> <span>Schedule
													Timings</span>
										</a></li>
										<li><a href="invoices.html"> <i
												class="fas fa-file-invoice"></i> <span>Invoices</span>
										</a></li>
										<li><a href="reviews.html"> <i class="fas fa-star"></i>
												<span>Reviews</span>
										</a></li>
										<li><a href="chat-doctor.html"> <i
												class="fas fa-comments"></i> <span>Message</span> <small
												class="unread-msg">23</small>
										</a></li>
										<li class="active"><a href="doctor-profile-settings.html">
												<i class="fas fa-user-cog"></i> <span>Profile
													Settings</span>
										</a></li>
										<li><a href="social-media.html"> <i
												class="fas fa-share-alt"></i> <span>Social Media</span>
										</a></li>
										<li><a href="doctor-change-password.html"> <i
												class="fas fa-lock"></i> <span>Change Password</span>
										</a></li>
										<li><a href="index-2.html"> <i
												class="fas fa-sign-out-alt"></i> <span>Logout</span>
										</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<!-- /Profile Sidebar -->

					</div>


					<div class="col-md-7 col-lg-8 col-xl-9">

						<%
							String sms=(String)request.getAttribute("sms");
							if(sms!=null){
								out.println(sms);
							}
						%>
						<!-- Basic Information -->
						<div class="card">
							<div class="card-body">

								<h4 class="card-title">Basic Information</h4>
								<form action="Userinfo" method="post"
									enctype="multipart/form-data">
									<div class="row form-row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="change-avatar">
													<div class="profile-img">
														<img src="assets/img/doctors/doctor-thumb-02.jpg"
															alt="User Image">
													</div>
													<div class="upload-img">
														<div>
															<span><i class="fa fa-upload"></i> Upload Photo</span> <input
																type="file" class="upload" name="image">
														</div>
														<small class="form-text text-muted">Allowed JPG,
															GIF or PNG. Max size of 2MB</small>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Username <span class="text-danger">*</span></label> <input
													type="text" class="form-control" name="t1">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Email <span class="text-danger">*</span></label> <input
													type="email" class="form-control" name="t2">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>First Name <span class="text-danger">*</span></label>
												<input type="text" class="form-control" name="t3">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Last Name <span class="text-danger">*</span></label>
												<input type="text" class="form-control" name="t4">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Phone Number</label> <input type="text"
													class="form-control" name="t5">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Gender</label> <select class="form-control select"
													name="t6">
													<option>Select</option>
													<option>Male</option>
													<option>Female</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group mb-0">
												<label>Date of Birth</label> <input type="date"
													class="form-control" name="t7">
											</div>
										</div>

									</div>
							</div>
							<div class="col-md-12">
								<div class="form-group m-4">
									<h4 class="card-title ">About Me</h4>
									<label>Biography</label>
									<textarea class="form-control" rows="5" name="t8"></textarea>
								</div>
							</div>

							<div class="col-md-12">
								<h4 class="card-title">Clinic Info</h4>
								<div class="row form-row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Clinic Name</label> <input type="text"
												class="form-control" name="t9">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Clinic Address</label> <input type="text"
												class="form-control" name="t10">
										</div>
									</div>

								</div>
							</div>
							<div class="col-md-12">
								<h4 class="card-title">Contact Details</h4>
								<div class="row form-row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Address Line 1</label> <input type="text"
												class="form-control" name="t11">
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">Address Line 2</label> <input
													type="text" class="form-control" name="t12">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">City</label> <input type="text"
													class="form-control" name="t13">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">State / Province</label> <input
													type="text" class="form-control" name="t14">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">Country</label> <input
													type="text" class="form-control" name="t15">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">Postal Code</label> <input
													type="text" class="form-control" name="t16">
											</div>
										</div>
									</div>
								</div>



								<div class="col-md-12">
									<h4 class="card-title">Services and Specialization</h4>
									<div class="form-group">
										<label>Services</label> <input type="text"
											data-role="tagsinput" class="input-tags form-control"
											placeholder="Enter Services" name="services"
											value="Tooth cleaning " id="services"> <small
											class="form-text text-muted">Note : Type & Press
											enter to add new services</small>
									</div>
									<div class="form-group mb-3">
										<label>Specialization </label> <input
											class="input-tags form-control" type="text"
											data-role="tagsinput" placeholder="Enter Specialization"
											name="specialist" value="Children Care,Dental Care"
											id="specialist"> <small class="form-text text-muted">Note
											: Type & Press enter to add new specialization</small>
									</div>
								</div>

								<div class="col-md-12">
									<h4 class="card-title">Education</h4>
									<div class="education-info">
										<div class="row form-row education-cont">
											<div class="col-12 col-md-10 col-lg-11">
												<div class="row form-row">
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>Degree</label> <input type="text"
																class="form-control" name="t17">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>College/Institute</label> <input type="text"
																class="form-control" name="t18">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>Year of Completion</label> <input type="text"
																class="form-control" name="t19">
														</div>
													</div>
												</div>
											</div>
											<a href="#dynamic page for adding education" class="pb-2 ">add
												more detail</a>
										</div>
									</div>
								</div>

								<div class="col-md-12 mb-3">
									<h4 class="card-title">Experience</h4>
									<div class="experience-info">
										<div class="row form-row experience-cont">
											<div class="col-12 col-md-10 col-lg-11">
												<div class="row form-row">
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>Hospital Name</label> <input type="text"
																class="form-control" name="t20">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>From</label> <input type="date"
																class="form-control" name="t21">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>To</label> <input type="date" class="form-control"
																name="t22">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>Designation</label> <input type="text"
																class="form-control" name="t23">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<a href="#dynamic page for adding education" class="pb-2 ">add
										more detail</a>

								</div>



								<div class="col-md-6">
									<button type="submit"
										class="btn btn-primary submit-btn submit-section submit-btn-bottom">Add
										details</button>
								</div>

								</form>

							</div>

						</div>

					</div>

				</div>






				<footer class="footer">

					<!-- Footer Top -->
					<div class="footer-top">
						<div class="container-fluid">
							<div class="row">
								<div class="col-lg-3 col-md-6">

									<!-- Footer Widget -->
									<div class="footer-widget footer-about">
										<div class="footer-logo">
											<img src="assets/img/footer-logo.png" alt="logo">
										</div>
										<div class="footer-about-content">
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua.</p>
											<div class="social-icon">
												<ul>
													<li><a href="#" target="_blank"><i
															class="fab fa-facebook-f"></i> </a></li>
													<li><a href="#" target="_blank"><i
															class="fab fa-twitter"></i> </a></li>
													<li><a href="#" target="_blank"><i
															class="fab fa-linkedin-in"></i></a></li>
													<li><a href="#" target="_blank"><i
															class="fab fa-instagram"></i></a></li>
													<li><a href="#" target="_blank"><i
															class="fab fa-dribbble"></i> </a></li>
												</ul>
											</div>
										</div>
									</div>
									<!-- /Footer Widget -->

								</div>

								<div class="col-lg-3 col-md-6">

									<!-- Footer Widget -->
									<div class="footer-widget footer-menu">
										<h2 class="footer-title">For Patients</h2>
										<ul>
											<li><a href="search.html"><i
													class="fas fa-angle-double-right"></i> Search for Doctors</a></li>
											<li><a href="login.html"><i
													class="fas fa-angle-double-right"></i> Login</a></li>
											<li><a href="register.html"><i
													class="fas fa-angle-double-right"></i> Register</a></li>
											<li><a href="booking.html"><i
													class="fas fa-angle-double-right"></i> Booking</a></li>
											<li><a href="patient-dashboard.html"><i
													class="fas fa-angle-double-right"></i> Patient Dashboard</a></li>
										</ul>
									</div>
									<!-- /Footer Widget -->

								</div>

								<div class="col-lg-3 col-md-6">

									<!-- Footer Widget -->
									<div class="footer-widget footer-menu">
										<h2 class="footer-title">For Doctors</h2>
										<ul>
											<li><a href="appointments.html"><i
													class="fas fa-angle-double-right"></i> Appointments</a></li>
											<li><a href="chat.html"><i
													class="fas fa-angle-double-right"></i> Chat</a></li>
											<li><a href="login.html"><i
													class="fas fa-angle-double-right"></i> Login</a></li>
											<li><a href="doctor-register.html"><i
													class="fas fa-angle-double-right"></i> Register</a></li>
											<li><a href="doctor-dashboard.html"><i
													class="fas fa-angle-double-right"></i> Doctor Dashboard</a></li>
										</ul>
									</div>
									<!-- /Footer Widget -->

								</div>

								<div class="col-lg-3 col-md-6">

									<!-- Footer Widget -->
									<div class="footer-widget footer-contact">
										<h2 class="footer-title">Contact Us</h2>
										<div class="footer-contact-info">
											<div class="footer-address">
												<span><i class="fas fa-map-marker-alt"></i></span>
												<p>
													3556 Beech Street, San Francisco,<br> California, CA
													94108
												</p>
											</div>
											<p>
												<i class="fas fa-phone-alt"></i> +1 315 369 5943
											</p>
											<p class="mb-0">
												<i class="fas fa-envelope"></i> doccure@example.com
											</p>
										</div>
									</div>
								</div>
								<!-- /Footer Widget -->

							</div>

						</div>


						<!-- /Footer Top -->

						<!-- Footer Bottom -->
						<div class="footer-bottom">
							<div class="container-fluid">

								<!-- Copyright -->
								<div class="copyright">
									<div class="row">
										<div class="col-md-6 col-lg-6">
											<div class="copyright-text">
												<p class="mb-0">
													<a href="templateshub.net">Templates Hub</a>
												</p>
											</div>
										</div>
										<div class="col-md-6 col-lg-6">

											<!-- Copyright Menu -->
											<div class="copyright-menu">
												<ul class="policy-menu">
													<li><a href="term-condition.html">Terms and
															Conditions</a></li>
													<li><a href="privacy-policy.html">Policy</a></li>
												</ul>
											</div>
											<!-- /Copyright Menu -->

										</div>
									</div>
								</div>
								<!-- /Copyright -->

							</div>
						</div>
						<!-- /Footer Bottom -->
				</footer>
				<!-- /Footer -->

			</div>





			<!-- /Page Content -->



			<!-- /Footer -->


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

			<!-- Select2 JS -->
			<script src="assets/plugins/select2/js/select2.min.js"></script>

			<!-- Dropzone JS -->
			<script src="assets/plugins/dropzone/dropzone.min.js"></script>

			<!-- Bootstrap Tagsinput JS -->
			<script
				src="assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>

			<!-- Profile Settings JS -->
			<script src="assets/js/profile-settings.js"></script>

			<!-- Custom JS -->
			<script src="assets/js/script.js"></script>
</body>

<!-- doccure/doctor-profile-settings.html  30 Nov 2019 04:12:15 GMT -->
</html>