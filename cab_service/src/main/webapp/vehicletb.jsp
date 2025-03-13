<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Vehicle List - Mega City Cab Service</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Lora:wght@400;700&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        html, body {
            height: 100%;
            margin: 0;
            background-color: #000;
            color: #fff;
            font-family: 'Lora', serif;
            line-height: 1.6;
        }
        /* Headings */
        h1, h2, h3, h4, h5, h6 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            letter-spacing: 0.5px;
        }
        /* Navbar */
        .navbar {
            background-color: rgba(0, 0, 0, 0.9);
        }
        .navbar-brand, .nav-link {
            color: #FFEB3B !important;
            transition: color 0.3s ease;
        }
        .nav-link:hover {
            color: #fff !important;
        }
        /* Hero Section */
        .hero {
            position: relative;
            background: url('images/ALL.jpg') no-repeat center center/cover;
            height: 40vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        .hero::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.7);
        }
        .hero-content {
            position: relative;
            z-index: 2;
            color: #FFEB3B;
        }
        /* Table Section */
        .table-section {
            padding: 40px 20px;
        }
        .table {
            background-color: rgba(0,0,0,0.8);
            border: 1px solid #FFEB3B;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(255,235,59,0.2);
            color: #fff;
        }
        th {
            color: #FFEB3B !important;
            border-color: #FFEB3B !important;
        }
        td {
            border-color: rgba(255,235,59,0.3) !important;
        }
        .btn-custom {
            background-color: #FFEB3B;
            color: #000;
            border: none;
            padding: 8px 20px;
            border-radius: 25px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .btn-custom:hover {
            background-color: #e6d32e;
        }
        /* Footer */
        footer {
            background-color: #000;
            color: #FFEB3B;
            padding: 20px 0;
            text-align: center;
            border-top: 3px solid #FFEB3B;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Mega City Cab Service</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <header class="hero">
        <div class="hero-content">
            <h1>Vehicle List</h1>
            <p>Manage your fleet vehicles efficiently</p>
        </div>
    </header>

    <!-- Table Section -->
    <div class="container table-section">
        <div class="table-responsive">
            <table class="table table-dark table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Vehicle</th>
                        <th>Brand & Model</th>
                        <th>Number Plate</th>
                        <th>Chassis Number</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cus" items="${cust}">
                        <tr>
                            <td>${cus.vehicle}</td>
                            <td>${cus.brand_model}</td>
                            <td>${cus.number_plate}</td>
                            <td>${cus.chassis_no}</td>
                            <td>
                                <form action="delvehicle" method="post" class="d-inline">
                                    <input type="hidden" name="vehicle" value="${cus.vehicle}">
                                    <button type="submit" class="btn btn-custom">Delete</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            &copy; 2025 Mega City Cab Service | All Rights Reserved
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>