<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Product</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f2c6c2; /* soft beige pastel */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            border-radius: 16px;
            border: 2px solid #ffb4a2; /* soft border */
            background-color: #fff; /* plain white card */
        }

        .card-header {
            background-color: #ff6b6b; /* soft red */
            color: white;
            font-size: 1.5rem;
            font-weight: 600;
            text-align: center;
            padding: 15px;
        }

        .form-label {
            font-weight: 600;
            color: #444;
        }

        .form-control {
            border-radius: 10px;
            border: 1px solid #ccc;
        }

        .form-control:focus {
            border-color: #ff6b6b;
            outline: none;
        }

        .btn-danger {
            background-color: #ff6b6b; /* pastel red */
            border: none;
            font-weight: 600;
            border-radius: 20px;
            padding: 8px 20px;
        }

        .btn-danger:hover {
            background-color: #e85a5a; /* slightly darker red */
        }

        .btn-secondary {
            background-color: #b5b5c3; /* soft grey */
            border: none;
            font-weight: 600;
            border-radius: 20px;
            padding: 8px 20px;
        }

        .btn-secondary:hover {
            background-color: #9d9daf;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <!-- Card for Delete Product -->
            <div class="card">
                <div class="card-header">
                    🗑️ Delete Product
                </div>
                <div class="card-body p-4">

                    <form action="${pageContext.request.contextPath}/deleteproduct" method="post">

                        <!-- Product ID Input -->
                        <div class="mb-3">
                            <label for="prodid" class="form-label">Enter Product ID:</label>
                            <input type="number" name="prodid" id="prodid" class="form-control" placeholder="Product ID" required>
                        </div>

                        <!-- Buttons -->
                        <div class="d-flex justify-content-between">
                            <button type="submit" class="btn btn-danger">
                                <i class="bi bi-trash"></i> Delete
                            </button>
                            <a href="index.jsp" class="btn btn-secondary">
                                Cancel
                            </a>
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap Icons & JS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
