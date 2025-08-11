<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(to right, #e0f7fa, #e1bee7);
            font-family: 'Poppins', sans-serif;
        }
        .container {
            background-color: #ffffff;
            border-radius: 15px;
            padding: 40px;
            margin-top: 60px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }
        .table th {
            background-color: #6a1b9a;
            color: #ffffff;
        }
        .btn-update {
            background-color: #00bcd4;
            color: white;
        }
        .btn-update:hover {
            background-color: #008ba3;
        }
        .page-header {
            color: #6a1b9a;
            font-weight: 600;
            text-align: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="page-header">📚 Student Records</h2>

    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th>Roll No</th>
            <th>Student Name</th>
            <th>Course</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.rollno}</td>
                <td>${student.studnm}</td>
                <td>${student.course}</td>
                 <td>
                    <a href="/update?rollno=${student.rollno}" class="btn btn-update btn-sm">✏️ Update</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="text-end">
        <a href="/" class="btn btn-outline-secondary">🏠 Home</a>
        <a href="/student" class="btn btn-success">➕ Add New Student</a>
        
    </div>
</div>

</body>
</html>
