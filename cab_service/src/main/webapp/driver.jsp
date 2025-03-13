<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Driver - Mega City Cab Service</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #000;
            color: #fff;
            font-family: 'Lora', serif;
        }
        .navbar {
            background-color: rgba(0, 0, 0, 0.9);
        }
        .navbar-brand {
            font-family: 'Montserrat', sans-serif;
            font-weight: bold;
            color: #FFEB3B !important;
        }
        .nav-link {
            color: #ccc !important;
            font-weight: 500;
        }
        .nav-link:hover {
            color: #FFEB3B !important;
        }
        .hero {
            background: linear-gradient(90deg, #000, #333);
            color: #FFEB3B;
            text-align: center;
            padding: 80px 20px;
            border-bottom: 3px solid #FFEB3B;
        }
        .card {
            background-color: rgba(0, 0, 0, 0.8);
            border: 1px solid #FFEB3B;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(255, 235, 59, 0.3);
            transition: transform 0.3s ease-in-out;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .btn-custom {
            background-color: #FFEB3B;
            color: #000;
            font-family: 'Montserrat', sans-serif;
            font-weight: bold;
            padding: 12px 25px;
            border-radius: 25px;
            border: none;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .btn-custom:hover {
            background-color: #e6d32e;
            color: #000;
        }
        footer {
            background-color: #000;
            color: #FFEB3B;
            padding: 15px;
            text-align: center;
            margin-top: 30px;
            border-top: 3px solid #FFEB3B;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Mega City Cab Service</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" 
            aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon" style="filter: invert(1);"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.jsp">About</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Hero Section -->
<div class="hero">
    <h1>Add Driver</h1>
    <p>Fill out the form below to add a driver to Mega City Cab Service</p>
</div>

<!-- Main Content -->
<div class="container-fluid mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow-sm p-4">
                <div class="card-body">
                    <center>
                        <h4 class="mt-3" style="color: #FFEB3B;"><b>Driver Profile</b></h4>
                        <span style="color: #ccc;">Account Status: Active</span>
                    </center>
                    <hr />
                    <!-- Add Driver Form -->
                    <form method="post" action="adddriver">
                        <div class="mb-3">
                            <label class="form-label">Driver ID</label>
                            <input type="text" class="form-control" name="driver_id" placeholder="Driver ID" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" placeholder="Driver's Name" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">License Number</label>
                            <input type="text" class="form-control" name="license_number" placeholder="License Number" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" placeholder="Driver's Address" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Contact Number</label>
                            <input type="number" class="form-control" name="contact_no" placeholder="Contact Number" required>
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-custom w-100">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    &copy; 2025 Mega City Cab Service | All Rights Reserved
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>