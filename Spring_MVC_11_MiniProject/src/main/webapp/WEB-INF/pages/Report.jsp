<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctors Report</title>

<!-- ✅ Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- ✅ Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

</head>

<body class="bg-light">

<!-- 🔷 Navbar -->
<nav class="navbar navbar-dark bg-primary shadow">
	<div class="container">
		<span class="navbar-brand fw-bold fs-4">
			<i class="bi bi-hospital"></i> Doctor Management System
		</span>
	</div>
</nav>

<div class="container mt-5">

	<!-- 🔷 Page Header Card -->
	<div class="card shadow border-0 mb-4">
		<div class="card-body text-center">
			<h2 class="fw-bold text-primary">
				<i class="bi bi-clipboard-data"></i> Doctors Report
			</h2>
		</div>
	</div>

	<c:choose>
		<c:when test="${!empty detail}">

			<!-- 🔷 Table Card -->
			<div class="card shadow border-0">
				<div class="card-body">

					<div class="table-responsive">
						<table class="table table-hover align-middle">
							<thead class="table-primary text-center">
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Address</th>
									<th>Fees</th>
									<th>Discount</th>
									<th>Net Price</th>
									<th>Edit</th>
									<th>Delete</th>
								</tr>
							</thead>

							<tbody class="text-center">
								<c:forEach var="doc" items="${detail}">
									<tr>
										<td class="fw-bold">${doc.id}</td>
										<td>${doc.name}</td>
										<td>${doc.addr}</td>

										<td>
											<span class="badge bg-info text-dark">
												₹ ${doc.fees}
											</span>
										</td>

										<td>
											<span class="badge bg-warning text-dark">
												${doc.discount}%
											</span>
										</td>

										<td>
											<span class="badge bg-success">
												₹ ${doc.netPrice}
											</span>
										</td>

										<td>
											<a href="edit?id=${doc.id}" 
											   class="btn btn-sm btn-outline-warning">
												<i class="bi bi-pencil-square"></i>
											</a>
										</td>

										<td>
											<a href="delete?id=${doc.id}" 
											   class="btn btn-sm btn-outline-danger"
											   onclick="return confirm('Delete this doctor?')">
												<i class="bi bi-trash"></i>
											</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>

						</table>
					</div>

				</div>
			</div>

		</c:when>

		<c:otherwise>
			<div class="alert alert-danger text-center shadow">
				<i class="bi bi-exclamation-triangle"></i> Doctor not found
			</div>
		</c:otherwise>
	</c:choose>

	<!-- 🔷 Messages -->
	<c:if test="${!empty msg}">
		<div class="alert alert-success mt-3 shadow text-center">${msg}</div>
	</c:if>

	<c:if test="${!empty delete_msg}">
		<div class="alert alert-warning mt-3 shadow text-center">${delete_msg}</div>
	</c:if>

	<c:if test="${!empty msg2}">
		<div class="alert alert-info mt-3 shadow text-center">${msg2}</div>
	</c:if>

	<!-- 🔷 Add Doctor Card -->
	<div class="card shadow border-0 mt-5 text-center">
		<div class="card-body">

			<h4 class="mb-3 text-primary">
				<i class="bi bi-person-plus"></i> Add New Doctor
			</h4>

			<a href="Regi" class="btn btn-lg btn-success px-4">
				<i class="bi bi-plus-circle"></i> Add Doctor
			</a>

		</div>
	</div>

</div>

</body>
</html>