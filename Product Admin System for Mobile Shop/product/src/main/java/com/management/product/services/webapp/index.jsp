<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - Mobile Shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(#c482af, #987ac4, #c482af, #a147ad);
            background-size: 300% 300%;
            animation: gradientBG 8s ease infinite;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: white;
        }
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        .navbar {
            background: linear-gradient(135deg, #ff4b5c, #f8c8dc);
        }
        .shop-title {
            font-size: 3.5rem;
            font-weight: bold;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.4);
            animation: fadeInDown 1s ease-out;
        }
        .info-section {
            background: white;
            color: #333;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0px 8px 25px rgba(0,0,0,0.15);
            animation: fadeInUp 1s ease-out;
        }
        .login-btn {
            font-size: 1.2rem;
            background: linear-gradient(to right, #ff4b5c, #f8c8dc);
            border: none;
            color: white;
            padding: 12px 25px;
            border-radius: 50px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.2);
            transition: all 0.3s ease-in-out;
        }
        .login-btn:hover {
            transform: scale(1.05);
            box-shadow: 0px 6px 15px rgba(0,0,0,0.3);
        }
        .list-group-item {
            border: none;
            background: transparent;
            font-size: 1.1rem;
        }
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#"><i class="fas fa-mobile-alt me-2"></i>Mobile Galaxy</a>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container text-center py-5">
        <!-- Shop Name -->
        <h1 class="shop-title mb-4">📱 Welcome to Mobile Galaxy</h1>

        <!-- Admin Login Icon -->
        <a href="/login" class="login-btn mb-4 d-inline-flex align-items-center">
            <i class="fas fa-user-shield me-2"></i> Admin Login
        </a>

        <!-- Shop Information -->
        <div class="info-section mt-4">
            <h3 class="text-danger mb-3"><i class="fas fa-store me-2"></i>About Our Shop</h3>
            <p class="lead">
                We bring you the best smartphones, tablets, and premium accessories 
                with unbeatable deals and trusted quality.
            </p>
            <ul class="list-group list-group-flush text-start mt-3">
                <li class="list-group-item"><i class="fas fa-check-circle text-danger me-2"></i> Wide range of mobile brands</li>
                <li class="list-group-item"><i class="fas fa-check-circle text-danger me-2"></i> Best market prices</li>
                <li class="list-group-item"><i class="fas fa-check-circle text-danger me-2"></i> Genuine products with warranty</li>
                <li class="list-group-item"><i class="fas fa-check-circle text-danger me-2"></i> Excellent customer service</li>
            </ul>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
