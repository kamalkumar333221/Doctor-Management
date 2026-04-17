<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Management App</title>

<!-- ✅ Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-warning-subtle">

	<!-- Header -->
	<div class="container text-center mt-5">
		<h1 class="fw-bold text-dark">
			Spring Boot MVC Doctor Management App
		</h1>
	</div>

	<!-- Card Section -->
	<div class="container mt-5">
		<div class="row justify-content-center">

			<div class="col-md-3">
				<div class="card shadow-lg text-center p-4 border-0 rounded-4">

					<a href="addDoctor" class="text-decoration-none">

						<img src="img/report.png" class="mx-auto d-block mb-3"
							style="width: 80px; height: 80px;">

						<!-- 🔥 Report Tag -->
						<span class="badge bg-primary mb-2 px-3 py-2 fs-6">
							Report
						</span>

						<!-- Button Style -->
						<div>
							<button class="btn btn-outline-primary w-100">
								View Report
							</button>
						</div>

					</a>

				</div>
			</div>
			
		</div>
	</div>

	<!-- Footer -->
	<div class="text-center mt-5 text-muted">
		<p>© 2026 Doctor Management System</p>
	</div>

</body>
</html>