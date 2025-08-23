<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #c4ddf5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
        
            width: 100%;
            max-width: 650px;
            border-radius: 20px;
            box-shadow: 0px 10px 30px rgba(0,0,0,0.3);
            overflow: hidden;
            animation: fadeIn 1s ease-in-out;
        }
        .card-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-align: center;
            font-size: 1.8rem;
            font-weight: bold;
            padding: 20px;
        }
        .form-label {
            font-weight: 600;
            color: #444;
        }
        .form-control {
            border-radius: 12px;
            border: 1px solid #ccc;
            padding: 12px;
            transition: 0.3s;
        }
        .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 8px rgba(102,126,234,0.4);
        }
        .btn-custom {
            background: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%);
            border: none;
            font-size: 1.1rem;
            padding: 12px 25px;
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
        ➕ Add New Product
    </div>
    <div class="card-body p-4">
        <form action="status" method="post">

            <div class="row g-3">
                <div class="col-md-6">
                    <label for="prodid" class="form-label">Product ID</label>
                    <input type="number" class="form-control" id="prodid" name="prodid" required>
                </div>
                <div class="col-md-6">
                    <label for="brand" class="form-label">Brand</label>
                    <input type="text" class="form-control" id="brand" name="brand" required>
                </div>
            </div>

            <div class="row g-3 mt-2">
                <div class="col-md-6">
                    <label for="modelnm" class="form-label">Model Name</label>
                    <input type="text" class="form-control" id="modelnm" name="modelnm" required>
                </div>
                <div class="col-md-6">
                    <label for="price" class="form-label">Price</label>
                    <input type="number" step="0.01" class="form-control" id="price" name="price" required>
                </div>
            </div>

            <div class="row g-3 mt-2">
                <div class="col-md-6">
                    <label for="stockquant" class="form-label">Stock Quantity</label>
                    <input type="number" class="form-control" id="stockquant" name="stockquant" required>
                </div>
                <div class="col-md-6">
                    <label for="warranty" class="form-label">Warranty</label>
                    <input type="text" class="form-control" id="warranty" name="warranty">
                </div>
            </div>

            <div class="mt-3">
                <label for="features" class="form-label">Features</label>
                <textarea class="form-control" id="features" name="features" rows="3"></textarea>
            </div>

            <div class="text-center mt-4">
                <button type="submit" class="btn btn-custom">Submit Product</button>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
