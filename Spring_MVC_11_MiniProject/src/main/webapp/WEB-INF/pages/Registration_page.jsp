<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Registration</title>

<!-- ✅ Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- ✅ Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

</head>

<body class="bg-body-secondary">

<!-- 🔷 Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow">
	<div class="container">
		<a class="navbar-brand fw-bold" href="#">
			<i class="bi bi-hospital"></i> Doctor Management
		</a>
	</div>
</nav>

<!-- 🔷 Main Layout -->
<div class="container mt-5">

	<div class="row justify-content-center">

		<div class="col-md-6 col-lg-5">

			<div class="card shadow-lg border-0 rounded-4">

				<!-- Header -->
				<div class="card-header bg-primary text-white text-center rounded-top-4">
					<h4 class="mb-0">
						<i class="bi bi-person-plus-fill"></i> Register Doctor
					</h4>
				</div>

				<!-- Body -->
				<div class="card-body p-4">

					<form:form action="Regi" method="post" modelAttribute="data">

						<!-- Name -->
						<div class="form-floating mb-3">
							<form:input path="name" class="form-control" id="name" placeholder="Name"/>
							<label for="name"><i class="bi bi-person"></i> Name</label>
						</div>

						<!-- Address -->
						<div class="form-floating mb-3">
							<form:input path="addr" class="form-control" id="addr" placeholder="Address"/>
							<label for="addr"><i class="bi bi-geo-alt"></i> Address</label>
						</div>

						<!-- Fees -->
						<div class="form-floating mb-3">
							<form:input path="fees" type="number" step="0.01" 
								class="form-control" id="fees" placeholder="Fees"/>
							<label for="fees"><i class="bi bi-currency-rupee"></i> Fees</label>
						</div>

						<!-- Buttons -->
						<div class="d-grid gap-2 mt-4">

							<button type="submit" class="btn btn-success btn-lg">
								<i class="bi bi-check-circle-fill"></i> Register
							</button>

							<button type="reset" class="btn btn-outline-secondary">
								<i class="bi bi-arrow-counterclockwise"></i> Reset
							</button>

						</div>

					</form:form>

				</div>

				<!-- Footer -->
				<div class="card-footer text-center text-muted small">
					Doctor Management System © 2026
				</div>

			</div>

		</div>

	</div>

</div>

</body>
</html>