<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Doctor</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container py-5">

	<!-- 🔷 Page Header -->
	<div class="text-center mb-5">
		<h2 class="fw-bold">
			<i class="bi bi-pencil-square text-primary"></i> Edit Doctor
		</h2>
		<p class="text-muted">Update doctor details easily</p>
	</div>

	<!-- 🔷 Form Layout -->
	<div class="row justify-content-center">
		<div class="col-md-6">

			<form:form action="update" method="post" modelAttribute="vo">

				<!-- ID -->
				<div class="mb-3">
					<label class="form-label fw-semibold">Doctor ID</label>
					<form:input path="id" class="form-control" readonly="true"/>
				</div>

				<!-- Name -->
				<div class="mb-3">
					<label class="form-label fw-semibold">Name</label>
					<form:input path="name" class="form-control" placeholder="Enter name"/>
				</div>

				<!-- Address -->
				<div class="mb-3">
					<label class="form-label fw-semibold">Address</label>
					<form:input path="addr" class="form-control" placeholder="Enter address"/>
				</div>

				<!-- Fees -->
				<div class="mb-4">
					<label class="form-label fw-semibold">Fees</label>
					<form:input path="fees" type="number" step="0.01" class="form-control"/>
				</div>

				<!-- Buttons -->
				<div class="d-flex gap-3">

					<button type="submit" class="btn btn-primary px-4">
						<i class="bi bi-save"></i> Update
					</button>

					<button type="reset" class="btn btn-outline-secondary">
						Reset
					</button>

					<a href="addDoctor" class="btn btn-outline-dark ms-auto">
						Back
					</a>

				</div>

			</form:form>

		</div>
	</div>

</div>

</body>
</html>