<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Search Result</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f4f6f9;
    }
    .container {
      margin-top: 60px;
    }
    .result-card {
      background-color: white;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }
    .table-custom th, .table-custom td {
      vertical-align: middle;
    }
    .alert {
      font-size: 18px;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="result-card">
    <h3 class="text-center text-primary mb-4">Student Search Result</h3>

    <c:choose>
      <c:when test="${not empty data}">
        <div class="table-responsive">
          <table class="table table-bordered table-striped table-hover table-custom">
            <thead class="thead-dark">
              <tr>
                <th>Field</th>
                <th>Value</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><strong>Roll Number</strong></td>
                <td>${data.rollno}</td>
              </tr>
              <tr>
                <td><strong>Student Name</strong></td>
                <td>${data.studnm}</td>
              </tr>
              <tr>
                <td><strong>Course</strong></td>
                <td>${data.course}</td>
              </tr>
            </tbody>
          </table>
          <a href="/" class="btn btn-outline-primary btn-home">Go Back to Home</a>
        </div>
      </c:when>

      <c:otherwise>
        <div class="alert alert-warning text-center" role="alert">
          No student found with the entered roll number.
          <br>
          <a href="/" class="btn btn-outline-primary btn-home">Go Back to Home</a>
        </div>
      </c:otherwise>
    </c:choose>
  </div>
</div>

</body>
</html>
