<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #ffecd2, #fcb69f);
            font-family: 'Poppins', sans-serif;
        }
        .card {
            border-radius: 18px;
            box-shadow: 0px 8px 25px rgba(0,0,0,0.15);
            background: #ffffff;
            animation: fadeIn 1s ease-in-out;
            overflow: hidden;
            max-width: 650px;  /* ✅ makes the form smaller */
            margin: auto;
        }
        .card-header {
            background: linear-gradient(90deg, #ff6a00, #ee0979);
            color: white;
            font-size: 1.6rem;
            font-weight: bold;
            text-align: center;
            padding: 18px;
        }
        label {
            font-weight: 600;
            color: #444;
        }
        input, textarea {
            border-radius: 10px !important;
            padding: 10px;
        }
        .btn-custom {
            background: linear-gradient(45deg, #36d1dc, #5b86e5);
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            transition: 0.3s;
        }
        .btn-custom:hover {
            background: linear-gradient(45deg, #5b86e5, #36d1dc);
            transform: scale(1.05);
        }
        .btn-back {
            background: linear-gradient(45deg, #ff512f, #dd2476);
            color: white;
            font-weight: bold;
            border-radius: 10px;
            transition: 0.3s;
        }
        .btn-back:hover {
            background: linear-gradient(45deg, #dd2476, #ff512f);
            transform: scale(1.05);
        }
        .btn-dashboard {
            background: linear-gradient(45deg, #11998e, #38ef7d);
            color: white;
            font-weight: bold;
            border-radius: 10px;
            transition: 0.3s;
        }
        .btn-dashboard:hover {
            background: linear-gradient(45deg, #38ef7d, #11998e);
            transform: scale(1.05);
        }
        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(-20px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            ✏ Update Product
        </div>
        <div class="card-body p-4">
            <form action="/update" method="post">

                <div class="mb-3">
                    <label for="prodid" class="form-label">Product ID</label>
                    <input type="number" class="form-control" id="prodid" name="prodid" 
                           value="${product.prodid}" >
                    <small class="text-muted">Product ID is fixed and cannot be changed.</small>
                </div>

                <div class="mb-3">
                    <label for="modelnm" class="form-label">Model Name</label>
                    <input type="text" class="form-control" id="modelnm" name="modelnm" 
                           value="${product.modelnm}" required>
                </div>

                <div class="mb-3">
                    <label for="brand" class="form-label">Brand</label>
                    <input type="text" class="form-control" id="brand" name="brand" 
                           value="${product.brand}" required>
                </div>

                <div class="mb-3">
                    <label for="price" class="form-label">Price (₹)</label>
                    <input type="number" step="0.01" class="form-control" id="price" name="price" 
                           value="${product.price}" required>
                </div>

                <div class="mb-3">
                    <label for="stockquant" class="form-label">Stock Quantity</label>
                    <input type="number" class="form-control" id="stockquant" name="stockquant" 
                           value="${product.stockquant}" required>
                </div>

                <div class="mb-3">
                    <label for="features" class="form-label">Features</label>
                    <textarea class="form-control" id="features" name="features" rows="3">${product.features}</textarea>
                </div>

                <div class="mb-3">
                    <label for="warranty" class="form-label">Warranty</label>
                    <input type="text" class="form-control" id="warranty" name="warranty" 
                           value="${product.warranty}">
                </div>

                <div class="d-flex justify-content-between mt-4">
                    <a href="${pageContext.request.contextPath}/productlist" class="btn btn-back px-4">⬅ Back</a>
                    <a href="${pageContext.request.contextPath}/dashboard" class="btn btn-dashboard px-4">🏠 Dashboard</a>
                    <button type="submit" class="btn btn-custom px-4">💾 Save Changes</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
