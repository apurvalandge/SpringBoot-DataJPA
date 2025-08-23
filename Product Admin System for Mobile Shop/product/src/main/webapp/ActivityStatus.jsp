<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Status Page</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            width: 100%;
            max-width: 600px;
            border-radius: 20px;
            box-shadow: 0px 10px 30px rgba(0,0,0,0.2);
            overflow: hidden;
            animation: fadeIn 0.8s ease-in-out;
        }
        .card-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-align: center;
            font-size: 1.6rem;
            font-weight: bold;
            padding: 20px;
        }
        .alert {
            border-radius: 12px;
            font-size: 1.1rem;
            font-weight: 500;
            padding: 15px;
        }
        .btn-custom {
            background: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%);
            border: none;
            font-size: 1rem;
            padding: 10px 25px;
            border-radius: 30px;
            transition: 0.3s;
            font-weight: bold;
            color: #fff;
        }
        .btn-custom:hover {
            background: linear-gradient(135deg, #38f9d7 0%, #43e97b 100%);
            transform: scale(1.05);
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
        System Status
    </div>
    <div class="card-body text-center">

        <!-- Success Message -->
        <c:if test="${not empty successMsg}">
            <div class="alert alert-success shadow-sm">
                ✅ ${successMsg}
            </div>
        </c:if>

        <!-- Failure Message -->
        <c:if test="${not empty errorMsg}">
            <div class="alert alert-danger shadow-sm">
                ❌ ${errorMsg}
            </div>
        </c:if>

        <!-- Neutral Info Message -->
        <c:if test="${not empty infoMsg}">
            <div class="alert alert-info shadow-sm">
                ℹ️ ${infoMsg}
            </div>
        </c:if>

        <div class="mt-4">
            <a href="addProduct.jsp" class="btn btn-custom">➕ Add Another Product</a>
            <a href="${pageContext.request.contextPath}/dashboard" class="btn btn-custom ms-2">🏠 Back to Dashboard</a>
            <a href="${pageContext.request.contextPath}/productlist" class="btn btn-custom ms-2">⬅ ViewProduct</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
