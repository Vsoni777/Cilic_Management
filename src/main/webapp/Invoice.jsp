<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Invoice Form</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<%String sms=(String )request.getAttribute("sms");
            if(sms!=null){
            	out.println(sms);
            }%>
				<h2 class="text-center mb-4">Invoice Form</h2>
				<form action="StoreInvoiceServlet" method="post">
					<div class="form-group">
						<label for="invoiceNumber">Invoice Number</label> <input
							type="text" class="form-control" id="invoiceNumber"
							name="invoiceNumber" required>
					</div>
					<div class="form-group">
						<label for="invoiceDate">Invoice Date</label> <input type="date"
							class="form-control" id="invoiceDate" name="invoiceDate" required>
					</div>
					<div class="form-group">
						<label for="dueDate">Due Date</label> <input type="date"
							class="form-control" id="dueDate" name="dueDate" required>
					</div>
					<div class="form-group">
						<label for="customerName">Customer Name</label> <input type="text"
							class="form-control" id="customerName" name="customerName"
							required>
					</div>
					<div class="form-group">
						<label for="address">Address</label> <input type="text"
							class="form-control" id="address" name="address">
					</div>
					<div class="form-group">
						<label for="email">Email</label> <input type="email"
							class="form-control" id="email" name="email">
					</div>
					<!-- Invoice Item Fields -->
					<div id="invoiceItems">
						<div class="invoice-item">
							<div class="form-row">
								<div class="col">
									<input type="text" class="form-control"
										placeholder="Description" name="description[]" required>
								</div>
								<div class="col">
									<input type="number" class="form-control"
										placeholder="Quantity" name="quantity[]" required>
								</div>
								<div class="col">
									<input type="number" class="form-control"
										placeholder="Unit Price" name="unitPrice[]" required>
								</div>
								<div class="col-auto">
									<button type="button" class="btn btn-danger btn-remove-item">Remove</button>
								</div>
							</div>
						</div>
					</div>
					<button type="button" class="btn btn-primary mt-3"
						id="btn-add-item">Add Item</button>
					<!-- End Invoice Item Fields -->
					<button type="submit" class="btn btn-primary mt-3">Submit</button>
				</form>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script>
        $(document).ready(function() {
            // Add new invoice item row
            $("#btn-add-item").click(function() {
                var newItem = '<div class="invoice-item">' +
                                  '<div class="form-row">' +
                                      '<div class="col">' +
                                          '<input type="text" class="form-control" placeholder="Description" name="description[]" required>' +
                                      '</div>' +
                                      '<div class="col">' +
                                          '<input type="number" class="form-control" placeholder="Quantity" name="quantity[]" required>' +
                                      '</div>' +
                                      '<div class="col">' +
                                          '<input type="number" class="form-control" placeholder="Unit Price" name="unitPrice[]" required>' +
                                      '</div>' +
                                      '<div class="col-auto">' +
                                          '<button type="button" class="btn btn-danger btn-remove-item">Remove</button>' +
                                      '</div>' +
                                  '</div>' +
                              '</div>';
                $("#invoiceItems").append(newItem);
            });

            // Remove invoice item row
            $(document).on("click", ".btn-remove-item", function() {
                $(this).closest(".invoice-item").remove();
            });
        });
    </script>
</body>
</html>
