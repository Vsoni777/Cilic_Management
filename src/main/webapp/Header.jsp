<!-- Header -->
<header class="header">
	<nav class="navbar navbar-expand-lg header-nav">
		<div class="navbar-header">
			<a id="mobile_btn" href="javascript:void(0);"> <span
				class="bar-icon"> <span></span> <span></span> <span></span>
			</span>
			</a> <a href="index-2.html" class="navbar-brand logo"> <img
				src="assets/img/logo.png" class="img-fluid" alt="Logo">
			</a>
		</div>
		<div class="main-menu-wrapper">
			<div class="menu-header">
				<a href="index-2.html" class="menu-logo"> <img
					src="assets/img/logo.png" class="img-fluid" alt="Logo">
				</a> <a id="menu_close" class="menu-close" href="javascript:void(0);">
					<i class="fas fa-times"></i>
				</a>
			</div>

		</div>

		<ul class="nav header-navbar-rht">
			<li class="nav-item contact-item">
				<div class="header-contact-img">
					<i class="far fa-hospital"></i>
				</div>
				<div class="header-contact-detail">
					<p class="contact-header">Contact</p>
					<p class="contact-info-header">+91 7773853494</p>
				</div>
			</li>
			<li class="nav-item dropdown has-arrow logged-item"><a href="#"
				class="dropdown-toggle nav-link" data-toggle="dropdown"> <span
					class="user-img"> <img class="rounded-circle"
						src="assets/img/doctors/doctor-thumb-02.jpg" width="31"
						alt="Darren Elder">
				</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right">
					<div class="user-header">
						<div class="avatar avatar-sm">
							<img src="assets/img/doctors/doctor-thumb-02.jpg"
								alt="User Image" class="avatar-img rounded-circle">
						</div>
						<div class="user-text">
							<h6><jsp:include page="head.jsp"></jsp:include></h6>
							<p class="text-muted mb-0">Doctor</p>
						</div>
					</div>
					<a class="dropdown-item" href="Doctor-dashbord.jsp">Dashboard</a> <a
						class="dropdown-item" href="doctor-profile-settings.jsp">Profile
						Settings</a> <a class="dropdown-item" href="logout.jsp">Logout</a>
				</div></li>
		</ul>

	</nav>
</header>