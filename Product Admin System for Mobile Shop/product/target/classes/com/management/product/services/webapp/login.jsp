<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - Mobile Galaxy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8c8dc; /* Baby pink base */
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .login-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0px 8px 25px rgba(0,0,0,0.15);
            width: 100%;
            max-width: 400px;
        }
        .login-header {
            background: #E6E6FA; /* Lavender */
            color: #4B0082; /* Indigo text */
            padding: 20px;
            text-align: center;
        }
        .login-header h3 {
            margin: 0;
            font-weight: bold;
        }
        .login-body {
            padding: 30px;
        }
        .form-control {
            border-radius: 10px;
            padding-left: 40px;
        }
        .input-icon {
            position: absolute;
            left: 15px;
            top: 10px;
            color: #9370DB; /* Medium purple */
        }
        .login-btn {
            background: #9370DB; /* Medium purple button */
            border: none;
            color: white;
            font-size: 1.1rem;
            padding: 10px;
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
        }
        .login-btn:hover {
            background: #7B68EE; /* Slightly deeper purple */
        }
        .back-link {
            color: #9370DB;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="login-card">
        <!-- Header -->
        <div class="login-header">
            <i class="fas fa-user-shield fa-2x mb-2"></i>
            <h3>Admin Login</h3>
        </div>

        <!-- Form Body -->
        <div class="login-body">
            <form action="/verify" method="POST">
                <!-- Username Field -->
                <div class="mb-3 position-relative">
                    <i class="fas fa-user input-icon"></i>
                    <input type="text" name="username" class="form-control" placeholder="Username" required>
                </div>

                <!-- Password Field -->
                <div class="mb-4 position-relative">
                    <i class="fas fa-lock input-icon"></i>
                    <input type="password" name="password" class="form-control" placeholder="Password" required>
                </div>

                <!-- Login Button -->
                <button type="submit" class="btn login-btn w-100">Login</button>

                <!-- Back to Home Link -->
                <div class="text-center mt-3">
                <c:if test="${not empty error}">
    <div class="alert alert-danger text-center">${error}</div>
</c:if>
                    <a href="/" class="back-link">← Back to Home</a>     
                </div>
            </form>
        </div>
    </div>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
