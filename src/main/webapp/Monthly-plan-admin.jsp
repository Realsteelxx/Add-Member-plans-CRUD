<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="mb-0 text-primary"><i class="bi bi-car-front"></i> Monthly Plans</h2>
        <a href="add-Monthly-plan.jsp" class="btn btn-success">
            <i class="bi bi-plus-lg"></i> Add New Monthly Plan
        </a>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-hover text-center">
            <thead class="table-dark">
            <tr>
                <th>Plan ID</th>
                <th>Plane Name</th>
                <th>Price(LKR)</th>
                <th>Notes</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <%
                String filePath = "C:\\Users\\yuthi\\Desktop\\Add Member plans\\Plan.info\\monthly-plan.txt";
                File file = new File(filePath);
                if (file.exists()) {
                    BufferedReader reader = new BufferedReader(new FileReader(file));
                    String line;
                    while ((line = reader.readLine()) != null) {
                        String[] data = line.split(",");
                        if (data.length == 4) {
            %>
            <tr>
                <td><%= data[0] %></td>
                <td><%= data[1] %></td>
                <td><%= data[2] %></td>
                <td><%= data[3] %></td>


                <td>
                    <form action="edit-Monthly-plan.jsp" method="get" class="d-inline">
                        <input type="hidden" name="planId" value="<%= data[0] %>">
                        <input type="hidden" name="planeName" value="<%= data[1] %>">
                        <input type="hidden" name="price" value="<%= data[2] %>">
                        <input type="hidden" name="notes" value="<%= data[3] %>">
                        <button type="submit" class="btn btn-sm btn-warning me-2">Edit</button>
                    </form>

                    <form action="monthlyPlanServlet" method="post" class="d-inline">
                        <input type="hidden" name="action" value="deleteMonthlyplan">
                        <input type="hidden" name="planId" value="<%= data[0] %>">
                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this vehicle?');">Delete</button>
                    </form>

                </td>
            </tr>
            <%
                        }
                    }
                    reader.close();
                }
            %>
            </tbody>
        </table>

    </div>
    <div class="text-center mt-3">
        <a href="index.jsp" class="btn btn-primary">Go Back</a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
