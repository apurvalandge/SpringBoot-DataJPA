<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #acb6e5);
            font-family: 'Segoe UI', sans-serif;
        }
        .container {
            max-width: 600px;
            margin-top: 80px;
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }
        .form-title {
            text-align: center;
            margin-bottom: 30px;
            color: #4a148c;
            font-weight: bold;
        }
        .form-control:focus {
            box-shadow: 0 0 8px rgba(74, 20, 140, 0.5);
        }
        .btn-update {
            background-color: #4a148c;
            color: white;
        }
        .btn-update:hover {
            background-color: #311b92;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="form-title">✏️ Update Student Information</h2>

    <form method="post" action="/updatestudent">
        <div class="mb-3">
            <label class="form-label">Roll No</label>
            <input type="number" name="rollno" class="form-control" value="${student.rollno}">
        </div>

        <div class="mb-3">
            <label class="form-label">Student Name</label>
            <input type="text" name="studnm" class="form-control" value="${student.studnm}">
        </div>

        <div class="mb-3">
            <label class="form-label">Course</label>
            <input type="text" name="course" class="form-control" value="${student.course}">
        </div>

        <div class="d-grid">
            <button type="submit" class="btn btn-update">✅ Update Student</button>
        </div>
    </form>
    
</div>

</body>
</html>
