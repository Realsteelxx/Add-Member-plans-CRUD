<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Edit Customer</h2>
    <form action="monthlyPlanServlet" method="post">
        <input type="hidden" name="action" value="updateMonthlyplan">
        <input type="hidden" name="originalID" value="<%= request.getParameter("planId") %>">

        <div class="mb-3">
            <label for="planId" class="form-label">Plan ID</label>
            <input type="text" class="form-control" id="planId" name="planId"
                   value="<%= request.getParameter("planId") %>" required>
        </div>

        <div class="mb-3">
            <label for="planName" class="form-label">Plan Name</label>
            <input type="text" class="form-control" id="planName" name="planName"
                   value="<%= request.getParameter("planName") %>" required>
        </div>

        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <input type="text" class="form-control" id="price" name="price"
                   value="<%= request.getParameter("price") %>" required>
        </div>
        <div class="mb-3">
            <label for="notes" class="form-label">Notes</label>
            <input type="text" class="form-control" id="notes" name="notes"
                   value="<%= request.getParameter("notes") %>" required>
        </div>


        <button type="submit" class="btn btn-primary">Update Plan</button>
        <a href="Monthly-plan-admin.jsp" class="btn btn-secondary">Cancel</a>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>