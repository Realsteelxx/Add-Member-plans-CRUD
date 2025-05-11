<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Monthly Plan</title>
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
    <h3 class="text-center mb-4">Add Monthly Plan</h3>
    <form action="monthlyPlanServlet" method="post">
      <input type="hidden" name ="action" value = "addMonthlyplan" />
      <div class="mb-3">
        <label for="plamId" class="form-label">Plan ID </label>
        <input type="text" class="form-control" id="plamId" name="planId" required>
      </div>
      <div class="mb-3">
        <label for="planName" class="form-label">Plan Name</label>
        <input type="text" class="form-control" id="planName" name="planName" required>

        <div class="mb-3">
          <label for="price" class="form-label">Price(LKR)</label>
          <input type="text" class="form-control" id="price" name="price" required>
        </div>
        <div class="mb-3">
          <label for="notes" class="form-label">Notes</label>
          <input type="text" class="form-control" id="notes" name="notes" required>
        </div>

        <button type="submit" class="btn btn-primary w-100">Add Monthly Plan</button>
      </div>

    </form>
  </div>
</div>
</body>
</html>
