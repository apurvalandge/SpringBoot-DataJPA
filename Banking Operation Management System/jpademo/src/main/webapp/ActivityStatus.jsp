<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Operation Status</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #e0c3fc, #8ec5fc);
            font-family: 'Segoe UI', sans-serif;
            padding-top: 100px;
        }
        .status-container {
            max-width: 600px;
            margin: auto;
            padding: 40px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .btn-back {
            margin-top: 30px;
            background-color: #4a148c;
            color: white;
        }
        .btn-back:hover {
            background-color: #311b92;
        }
    </style>
</head>
<body>

<div class="status-container">
    <h2 class="mb-4">📢 Operation Status</h2>

    <div class="alert alert-${status}" role="alert">
        ${msg}
    </div>

    <a href="/home" class="btn btn-back">🔙 Go to Home</a>
</div>

</body>
</html>
