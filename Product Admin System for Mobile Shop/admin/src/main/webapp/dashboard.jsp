<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Mobile Shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f8bbd0, #e1bee7, #bbdefb); /* baby pink, lavender, light blue */
            min-height: 100vh;
        }
        .navbar {
            background-color: #d81b60; /* deep pink/red */
        }
        .navbar-brand, .nav-link {
            color: white !important;
        }
        .dashboard-card {
            border-radius: 15px;
            transition: transform 0.2s;
        }
        .dashboard-card:hover {
            transform: translateY(-5px);
        }
        .card-icon {
            font-size: 3rem;
            color: white;
        }
        .logout-btn {
            background-color: #f06292;
            color: white;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg px-4">
        <a class="navbar-brand fw-bold" href="#">📱 Mobile Galaxy - Admin</a>
        <div class="ms-auto">
            <a href="logout" class="btn logout-btn">Logout</a>
        </div>
    </nav>

    <!-- Welcome -->
    <div class="container text-center mt-4">
        <h2 class="fw-bold text-dark">Welcome, ${adminName} 👋</h2>
        <p class="text-muted">Manage your mobile shop easily from here</p>
    </div>

    <!-- Dashboard Cards -->
    <div class="container mt-5">
        <div class="row g-4">

            <!-- Add Product -->
            <div class="col-md-4">
                <div class="card text-center bg-danger dashboard-card text-white">
                    <div class="card-body">
                        <i class="fas fa-plus-circle card-icon"></i>
                        <h5 class="card-title mt-3">Add New Mobile</h5>
                        <p class="card-text">Add latest smartphones to your store.</p>
                        <a href="addProduct" class="btn btn-light">Add</a>
                    </div>
                </div>
            </div>

            <!-- View Products -->
            <div class="col-md-4">
                <div class="card text-center bg-primary dashboard-card text-white">
                    <div class="card-body">
                        <i class="fas fa-mobile-alt card-icon"></i>
                        <h5 class="card-title mt-3">View All Mobiles</h5>
                        <p class="card-text">See details of all mobiles available.</p>
                        <a href="viewProducts" class="btn btn-light">View</a>
                    </div>
                </div>
            </div>

            <!-- Update Stock -->
            <div class="col-md-4">
                <div class="card text-center bg-success dashboard-card text-white">
                    <div class="card-body">
                        <i class="fas fa-edit card-icon"></i>
                        <h5 class="card-title mt-3">Update Stock</h5>
                        <p class="card-text">Modify quantity of existing mobiles.</p>
                        <a href="updateStock" class="btn btn-light">Update</a>
                    </div>
                </div>
            </div>

            <!-- Delete Product -->
            <div class="col-md-4">
                <div class="card text-center bg-warning dashboard-card text-white">
                    <div class="card-body">
                        <i class="fas fa-trash card-icon"></i>
                        <h5 class="card-title mt-3">Delete Mobile</h5>
                        <p class="card-text">Remove old or unavailable mobiles.</p>
                        <a href="deleteProduct" class="btn btn-light">Delete</a>
                    </div>
                </div>
            </div>

            <!-- View Orders -->
            <div class="col-md-4">
                <div class="card text-center bg-info dashboard-card text-white">
                    <div class="card-body">
                        <i class="fas fa-shopping-cart card-icon"></i>
                        <h5 class="card-title mt-3">View Orders</h5>
                        <p class="card-text">Check customer purchase details.</p>
                        <a href="viewOrders" class="btn btn-light">Orders</a>
                    </div>
                </div>
            </div>

            <!-- Reports -->
            <div class="col-md-4">
                <div class="card text-center bg-secondary dashboard-card text-white">
                    <div class="card-body">
                        <i class="fas fa-chart-line card-icon"></i>
                        <h5 class="card-title mt-3">Reports</h5>
                        <p class="card-text">View sales and stock reports.</p>
                        <a href="reports" class="btn btn-light">View</a>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
