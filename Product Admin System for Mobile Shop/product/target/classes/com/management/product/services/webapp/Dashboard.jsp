<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Mobile Shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #dff2f5;
            min-height: 100vh;
            display: flex;
        }
        /* Sidebar */
        /* Sidebar */
.sidebar {
    width: 250px;
    background: linear-gradient(180deg, #ffdde1, #ee9ca7); /* light pink to soft red */
    color: #4a0000; /* dark red text for contrast */
    display: flex;
    flex-direction: column;
    padding: 20px 15px;
}
.sidebar h3 {
    font-weight: bold;
    margin-bottom: 20px;
    text-align: center;
    color: #b3003b; /* deep pink title */
}
.sidebar a {
    color: #4a0000; /* dark text instead of pure white */
    text-decoration: none;
    padding: 12px 15px;
    border-radius: 8px;
    display: block;
    margin-bottom: 10px;
    font-size: 15px;
    font-weight: 500;
    transition: background 0.3s ease, color 0.3s ease;
}
.sidebar a:hover {
    background: rgba(255, 255, 255, 0.4);
    color: #b3003b;
}
.logout-btn {
    margin-top: auto;
    background: #ff4d4d;
    text-align: center;
    color: white !important;
}
        
        /* Main Content */
        .main {
            flex: 1;
            padding: 30px;
        }
        .welcome-box {
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            padding: 25px;
            margin-bottom: 30px;
        }
        .stats-box {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }
        .stat {
            flex: 1;
            min-width: 220px;
            background: white;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }
        .stat:hover {
            transform: translateY(-5px);
        }
        .stat h4 {
            font-size: 18px;
            margin-bottom: 10px;
        }
        .stat p {
            font-size: 22px;
            font-weight: bold;
        }
        footer {
            margin-top: 40px;
            text-align: center;
            color: #666;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h3>📱 Admin Panel</h3>
    <a href="/add">➕ Add New Product</a>
    <a href="/productlist">📋 View Products</a>
    <a href="/products">✏️ Update Product</a>
    <a href="/products">🗑️ Delete Product</a>
    <a href="/products/lowstock">⚠️ Low Stock Alerts</a>
    <a href="/logout" class="logout-btn">🚪 Logout</a>
</div>

<!-- Main Content -->
<div class="main">
    <div class="welcome-box">
        <h2>👋 Welcome, Admin</h2>
        <p>Manage your mobile shop products efficiently with the tools in the sidebar.</p>
    </div>

    <div class="stats-box">
        <div class="stat">
            <h4>Total Products</h4>
            <p>${totalProducts}</p>
        </div>
        <div class="stat">
            <h4>Brands</h4>
            <p>${totalBrands}</p>
        </div>
        <div class="stat">
            <h4>Low Stock</h4>
            <p>${lowStockProduct}</p>
        </div>
        <div class="stat">
            <h4>Out of Stock</h4>
            <p>${outOfStockProducts}</p>
        </div>
    </div>



    <footer>
        © 2025 Mobile Shop Admin System | Designed with ❤️
    </footer>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
