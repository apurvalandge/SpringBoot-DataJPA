<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Operation Status</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f0f2f5;
        }

        .status-box {
            max-width: 600px;
            margin: 100px auto;
            padding: 40px;
            border-radius: 15px;
            background: #ffffff;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .alert-custom {
            font-size: 1.25rem;
            font-weight: 500;
            padding: 20px;
            border-radius: 10px;
        }

        .btn-home {
            margin-top: 30px;
        }
    </style>
</head>
<body>

    <div class="status-box">
        <div class="alert alert-success alert-custom" role="alert">
            ${msg}
        </div>

        <a href="/" class="btn btn-outline-primary btn-home">Go Back to Home</a>
    </div>

</body>
</html>
