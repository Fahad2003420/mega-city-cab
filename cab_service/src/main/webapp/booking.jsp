<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      background-color: rgba(0,0,0,0.9);
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
      background: linear-gradient(90deg, #000, #333);
      color: #FFEB3B;
      text-align: center;
      padding: 100px 20px;
      border-bottom: 3px solid #FFEB3B;
    }
    /* Table Styles */
    .table {
      background-color: rgba(0,0,0,0.8);
      border: 1px solid #FFEB3B;
    }
    .table thead {
      background-color: #FFEB3B;
      color: #000;
    }
    .table tbody tr {
      color: #fff;
    }
    /* Card/Form Styles */
    .card {
      background-color: rgba(0,0,0,0.8);
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
    /* Alert Styles */
    .alert-success {
      background-color: rgba(255,235,59,0.2);
      border: 1px solid #FFEB3B;
      color: #FFEB3B;
    }
    /* Container Margin */
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
               <a class="nav-link" href="#">Login</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="reg.jsp">Register</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="about.jsp">About</a>
            </li>
         </ul>
         <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-light" type="submit">Search</button>
         </form>
      </div>
    </div>
  </nav>
  
  <!-- Vehicle List Table -->
  <div class="container mt-5">
    <h2 class="mb-4">Available Vehicles</h2>
    <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover text-center">
         <thead>
            <tr>
               <th scope="col">Vehicle</th>
               <th scope="col">Brand and Model</th>
               <th scope="col">Number Plate</th>
               <th scope="col">Chassis Number</th>
               <th scope="col">Actions</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach var="vehicle" items="${vehicleList}">
               <tr>
                  <td>${vehicle.vehicle}</td>
                  <td>${vehicle.brandModel}</td>
                  <td>${vehicle.numberPlate}</td>
                  <td>${vehicle.chassisNumber}</td>
                  <td>
                     <form action="vehiclestb" method="post">
                        <input type="hidden" name="vehicleId" value="${vehicle.id}">
                        <button type="submit" class="btn btn-primary btn-sm">Book</button>
                     </form>
                  </td>
               </tr>
            </c:forEach>
         </tbody>
      </table>
    </div>
  </div>
  
  <!-- Hero Section for Booking Form -->
  <div class="hero">
    <h1>Book Your Vehicle</h1>
    <p>Fill out the form below to add your booking</p>
  </div>
  
  <!-- Billing/Booking Form -->
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <!-- Display error message if any -->
            <c:if test="${not empty errorMessage}">
              <div class="alert alert-danger">${errorMessage}</div>
            </c:if>
            <form action="BookingServlet" method="post">
              <div class="mb-3">
                <label class="form-label">Customer Name:</label>
                <input type="text" class="form-control" name="customerName" placeholder="Enter your name" required>
              </div>
              <div class="mb-3">
                <label class="form-label">Pickup Date:</label>
                <input type="date" class="form-control" name="pickupDate" required>
              </div>
              <div class="mb-3">
                <label class="form-label">Vehicle Number Plate (Selected):</label>
                <input type="text" class="form-control" name="vc" placeholder="Enter chosen vehicle's number plate" required>
              </div>
              <div class="mb-3">
                <label class="form-label">Contact Number:</label>
                <input type="number" class="form-control" name="contactNumber" placeholder="Enter your contact number" required>
              </div>
              <div class="mb-3">
                <label class="form-label">KM Run:</label>
                <input type="number" class="form-control" name="kmRun" placeholder="Enter KM run" required>
              </div>
              <div class="mb-3">
                <label class="form-label">Vehicle Type (Price per Km):</label>
                <select class="form-control" name="pricePerKm" required>
                  <option value="200">Van</option>
                  <option value="400">Car</option>
                  <option value="500">Mini Van</option>
                  <option value="1000">Bus</option>
                </select>
              </div>
              <div class="d-grid gap-2 text-center">
                <button type="submit" class="btn btn-primary">Submit Booking</button>
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
  
  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
