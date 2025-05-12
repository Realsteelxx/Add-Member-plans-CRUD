<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plans List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="mb-0 text-primary"><i class="bi bi-car-front"></i> Yearly plans</h2>

    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-hover text-center">
            <thead class="table-dark">
            <tr>
                <th>Plan ID</th>
                <th>Plan</th>
                <th>Base Price(LKR)</th>
                <th>Addons(LKR)(LKR)</th>
                <th>Subtotal</th>
                <th>Discount</th>
                <th>Final Price</th>
            </tr>
            </thead>
            <tbody>
            <%
                String filePath = "C:\\Users\\yuthi\\Desktop\\Add Member plans\\Plan.info\\yearly-plan.txt";
                File file = new File(filePath);
                if (file.exists()) {
                    BufferedReader reader = new BufferedReader(new FileReader(file));
                    String line;
                    while ((line = reader.readLine()) != null) {
                        String[] data = line.split(",");
                        if (data.length == 7) {
            %>
            <tr>
                <td><%= data[0] %></td>
                <td><%= data[1] %></td>
                <td><%= data[2] %></td>
                <td><%= data[3] %></td>
                <td><%= data[4] %></td>
                <td><%= data[5] %></td>
                <td><%= data[6] %></td>


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
