<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Plan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            transition: 0.3s;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card p-4" style="max-width: 500px; width: 100%;">
        <h3 class="text-center mb-4">Add New Plan</h3>
        <form action="yearlyPlanServlet" method="post">
            <input type="hidden" name ="action" value = "addYearlyplan" />
            <div class="mb-3">
                <label for="planId" class="form-label">Plan ID</label>
                <input type="text" class="form-control" id="planId" name="planId" required>
            </div>
            <div class="mb-3">
                <label for="planName" class="form-label">Plan Name</label>
                <input type="text" class="form-control" id="planName" name="planName" required>

                <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input type="text" class="form-control" id="price" name="price" required>
                </div>
                <div class="mb-3">
                    <label for="addons" class="form-label">Addons</label>
                    <input type="text" class="form-control" id="addons" name="addons" required>
                </div>
                <div class="mb-3">
                    <label for="subTotal" class="form-label">Sub Total</label>
                    <input type="text" class="form-control" id="subTotal" name="subTotal" required>
                </div>
                <div class="mb-3">
                    <label for="discount" class="form-label">Discount</label>
                    <input type="text" class="form-control" id="discount" name="discount" required>
                </div>
                <div class="mb-3">
                    <label for="finalPrice" class="form-label">Final Price</label>
                    <input type="text" class="form-control" id="finalPrice" name="finalPrice" required>
                </div>



                <button type="submit" class="btn btn-primary w-100">Add Car</button>
            </div>

        </form>
    </div>
</div>
</body>
</html>
