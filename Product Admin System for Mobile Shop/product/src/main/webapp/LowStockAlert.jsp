<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Low Stock Alert</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #edc5de, #d6c5ed);
            background: linear-gradient(135deg, #f2c2d1, #d6c5ed);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Quicksand', sans-serif;
        }

        .card {
            max-width: 850px;
            width: 100%;
            border-radius: 18px;
            background: #fffaf6;
            box-shadow: 0px 6px 20px rgba(0,0,0,0.1);
            animation: fadeIn 0.9s ease-in-out;
        }

        .card-header {
            background: #ffb3ba; /* pastel pink */
            color: #4a4a4a;
            font-size: 1.6rem;
            font-weight: 600;
            text-align: center;
            padding: 20px;
            border-top-left-radius: 18px;
            border-top-right-radius: 18px;
        }

        .alert-success {
            background-color: #c0f5d5; /* pastel green */
            border: none;
            color: #256d4f;
            font-weight: 500;
        }

        .alert-warning {
            background-color: #ffe4b5; /* pastel orange */
            border: none;
            color: #8a5c00;
            font-weight: 500;
        }

        thead {
            background-color: #bae1ff; /* pastel blue */
            color: #333;
        }

        tbody tr:hover {
            background-color: #f9f1f1;
        }

        .fw-bold.text-danger {
            color: #d96c75 !important; /* soft red */
        }

        .btn-custom {
            background: #a0e7e5; /* pastel aqua */
            border: none;
            font-size: 1rem;
            padding: 10px 25px;
            border-radius: 25px;
            transition: 0.3s;
            font-weight: 600;
            color: #333;
            text-decoration: none;
        }

        .btn-custom:hover {
            background: #b4f8c8; /* pastel mint */
            transform: translateY(-2px);
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(20px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>

<div class="card">
    <div class="card-header">
        ⚠️ Low Stock Products
    </div>
    <div class="card-body">

        <!-- No Low Stock -->
        <c:if test="${empty lowStockList}">
            <div class="alert alert-success text-center shadow-sm">
                ✅ All products are in healthy stock levels.
            </div>
        </c:if>

        <!-- Low Stock Found -->
        <c:if test="${not empty lowStockList}">
            <div class="alert alert-warning text-center shadow-sm">
                The following products have stock lower than <b>5 units</b>:
            </div>
            <div class="table-responsive">
                <table class="table table-bordered text-center align-middle">
                    <thead>
                        <tr>
                            <th>Product ID</th>
                            <th>Model</th>
                            <th>Brand</th>
                            <th>Stock Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="p" items="${lowStockList}">
                            <tr>
                                <td>${p.prodid}</td>
                                <td>${p.modelnm}</td>
                                <td>${p.brand}</td>
                                <td class="fw-bold text-danger">${p.stockquant}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>

        <!-- Buttons -->
        <div class="text-center mt-4">
            <a href="${pageContext.request.contextPath}/dashboard" class="btn-custom">🏠 Back to Dashboard</a>
            
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
