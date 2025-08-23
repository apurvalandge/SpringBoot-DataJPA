<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(#d9bceb);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .table-container {
            margin-top: 40px;
            padding: 25px;
            border-radius: 20px;
            background: #ffffff;
            box-shadow: 0px 6px 20px rgba(0,0,0,0.15);
            animation: fadeIn 1.2s ease-in-out;
        }
        .header {
            text-align: center;
            margin-top: 20px;
            font-size: 2rem;
            font-weight: bold;
            background: linear-gradient(90deg, #007bff, #ff4081);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .table thead {
            background: linear-gradient(90deg, #007bff, #00c6ff);
            color: white;
            font-size: 1rem;
        }
        .table tbody tr {
            transition: transform 0.2s, background 0.3s;
        }
        .table tbody tr:hover {
            transform: scale(1.02);
            background-color: #f1faff;
        }
        .badge {
            font-size: 0.9rem;
            padding: 6px 10px;
            border-radius: 12px;
        }
        .btn-gradient {
            background: linear-gradient(90deg, #007bff, #9dcecf);
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            color: white;
            font-weight: bold;
            transition: 0.3s;
        }
        .btn-gradient:hover {
            background: linear-gradient(90deg, #0056b3, #0080ff);
            transform: translateY(-2px);
        }
        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(20px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="header">📦 Product Inventory</h2>

    <div class="table-container">
        <table class="table table-bordered table-hover text-center align-middle">
            <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Model Name</th>
                    <th>Brand</th>
                    <th>Price (₹)</th>
                    <th>Stock Quantity</th>
                    <th>Features</th>
                    <th>Warranty</th>
                </tr>
            </thead>
            <tbody>
    <c:forEach var="product" items="${products}">
        <tr>
            <td><b>${product.prodid}</b></td>
            <td>${product.modelnm}</td>
            <td>${product.brand}</td>
            <td><span class="text-success fw-bold">₹ ${product.price}</span></td>
            <td>
                <c:choose>
                    <c:when test="${product.stockquant == 0}">
                        <span class="badge bg-danger">Out of Stock</span>
                    </c:when>
                    <c:when test="${product.stockquant < 5}">
                        <span class="badge bg-warning text-dark">Low Stock (${product.stockquant})</span>
                    </c:when>
                    <c:otherwise>
                        <span class="badge bg-success">${product.stockquant}</span>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${product.features}</td>
            <td>${product.warranty}</td>
            <td>
                <a href="${pageContext.request.contextPath}/updateproduct" class="btn btn-warning btn-sm">✏ Update</a>
                
            </td>
        </tr>
    </c:forEach>
</tbody>
            
        </table>

        <div class="text-center mt-3">
            <a href="${pageContext.request.contextPath}/dashboard" class="btn btn-gradient">
                ⬅ Back to Dashboard
            </a>
        </div>
    </div>
</div>

</body>
</html>
