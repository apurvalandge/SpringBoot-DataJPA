<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(120deg, #a1ffce, #faffd1);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            border-radius: 15px;
            padding: 30px;
            max-width: 950px;
            width: 100%;
        }
        .form-heading {
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <div class="card shadow-lg">
        <h3 class="text-center text-primary mb-4">
            🎯 Search Student Information
        </h3>
        <div class="row">
            <!-- Form 1: Search by Roll No -->
            <div class="col-md-6 pe-md-4 border-end">
                <h5 class="form-heading text-info">🔍 By Roll Number</h5>
                <form action="/searchonrollno" method="post">
                    <div class="mb-3">
                        <label for="rollno" class="form-label">Enter Roll Number</label>
                        <input type="number" class="form-control" id="rollno" name="rollno" required>
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-info text-white">Search</button>
                    </div>
                </form>
            </div>

            <!-- Form 2: Search by Course -->
            <div class="col-md-6 ps-md-4">
                <h5 class="form-heading text-success">📚 By Course</h5>
                <form action="/searchsoncourse" method="post">
                    <div class="mb-3">
                        <label for="course" class="form-label">Enter Course Name</label>
                        <input type="text" class="form-control" id="course" name="course" required>
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-success text-white">Search</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
