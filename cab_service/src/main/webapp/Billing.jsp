<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Billing System - Mega City Cab Service</title>
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
    /* Alert Message */
    .alert-success {
      background-color: rgba(255,235,59,0.2);
      border: 1px solid #FFEB3B;
      color: #FFEB3B;
    }
    /* Card/Form Styles */
    .card {
      background-color: rgba(0, 0, 0, 0.8);
      border: 1px solid #FFEB3B;
      border-radius: 15px;
      box-shadow: 0 4px 8px rgba(255,235,59,0.3);
      transition: transform 0.3s ease;
    }
    .card:hover {
      transform: scale(1.05);
    }
    .card-body label {
      color: #FFEB3B;
      font-weight: bold;
    }
    .form-control {
      background-color: rgba(255,255,255,0.1);
      border: 1px solid #FFEB3B;
      color: #fff;
    }
    .form-control::placeholder {
      color: #ccc;
    }
    .btn-primary {
      background-color: #FFEB3B;
      border: none;
      color: #000;
      font-weight: bold;
      border-radius: 25px;
      transition: background-color 0.3s ease;
    }
    .btn-primary:hover {
      background-color: #e6d32e;
    }
    /* Container */
    .container {
      margin-top: 60px;
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
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Mega City Cab Service</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
         aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
         <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
               <a class="nav-link" href="#">Home</a>
            </li>
         </ul>
         <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-light" type="submit">Search</button>
         </form>
      </div>
    </div>
  </nav>

  <!-- Booking ID Success Alert -->
  <c:if test="${not empty bookingId}">
    <div class="container mt-5">
      <div class="alert alert-success">
         Your booking has been successfully created! Your Booking ID is: ${bookingId}
      </div>
    </div>
  </c:if>

  <!-- Billing Form -->
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title text-center mb-4">Generate Bill</h4>
            <form action="GenerateBillServlet" method="get">
              <div class="mb-3">
                <label class="form-label">Enter Booking ID:</label>
                <input type="number" class="form-control" name="bookingId" placeholder="Booking ID" required>
              </div>
              <div class="d-grid gap-2">
                <button type="submit" class="btn btn-primary">Generate Bill</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer>
    <div class="container">
      &copy; 2025 Mega City Cab Service | All Rights Reserved
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
