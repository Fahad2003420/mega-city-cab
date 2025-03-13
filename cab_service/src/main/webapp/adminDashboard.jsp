<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Home - Mega City Cab Service</title>
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
      background: linear-gradient(90deg, #000, #333);
      color: #FFEB3B;
      text-align: center;
      padding: 100px 20px;
      border-bottom: 3px solid #FFEB3B;
    }
    /* Button - Manage */
    .btn-custom {
      background-color: #FFEB3B;
      color: #000;
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
    /* Container */
    .container {
      margin-top: 40px;
    }
    /* Admin Option Cards */
    .admin-option {
      background-color: rgba(0,0,0,0.8);
      border: 1px solid #FFEB3B;
      border-radius: 15px;
      box-shadow: 0 4px 8px rgba(255,235,59,0.3);
      transition: transform 0.3s ease-in-out;
      padding: 20px;
      margin-bottom: 30px;
    }
    .admin-option:hover {
      transform: scale(1.05);
    }
    .admin-option img {
      border-radius: 50%;
      background-color: #fff;
      padding: 10px;
    }
    .admin-option h5 {
      color: #FFEB3B;
      margin-top: 10px;
      margin-bottom: 15px;
    }
    /* Section Headings */
    .section-title {
      text-align: center;
      margin-bottom: 30px;
      color: #FFEB3B;
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
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
              data-bs-target="#navbarNav" aria-controls="navbarNav" 
              aria-expanded="false" aria-label="Toggle navigation">
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
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-light" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>

  <!-- Hero Section -->
  <header class="hero">
    <h1>Welcome to Mega City Cab Service</h1>
    <h2>Admin Dashboard</h2>
  </header>

  <!-- Main Content -->
  <div class="container mt-5">
    <!-- Add Section -->
    <div class="row mb-5">
      <h4 class="section-title">Add Users / Vehicles / Drivers</h4>
      
      <!-- Add Users -->
      <div class="col-md-4">
        <div class="admin-option text-center">
          <img src="images/adduser.png" alt="Add Users Icon" width="80" class="img-fluid mb-3">
          <h5>Add Users</h5>
          <a href="reg.jsp" class="btn-custom">Manage</a>
        </div>
      </div>

      <!-- Add Vehicles -->
      <div class="col-md-4">
        <div class="admin-option text-center">
          <img src="images/addv.PNG" alt="Add Vehicle Icon" width="80" class="img-fluid mb-3">
          <h5>Add Vehicle</h5>
          <a href="addv.jsp" class="btn-custom">Manage</a>
        </div>
      </div>

      <!-- Add Drivers -->
      <div class="col-md-4">
        <div class="admin-option text-center">
          <img src="images/addd.PNG" alt="Add Driver Icon" width="80" class="img-fluid mb-3">
          <h5>Add Driver</h5>
          <a href="driver.jsp" class="btn-custom">Manage</a>
        </div>
      </div>
    </div>

    <!-- View Section -->
    <div class="row mb-5">
      <h4 class="section-title">View and Delete Users / Vehicles / Drivers</h4>
      
      <!-- View Users -->
      <div class="col-md-4">
        <div class="admin-option text-center">
          <img src="images/viewu.PNG" alt="View Users Icon" width="80" class="img-fluid mb-3">
          <h5>View Users</h5>
          <form action="regstb" method="post">
            <button type="submit" class="btn-custom">Manage</button>
          </form>
        </div>
      </div>

      <!-- View Vehicles -->
      <div class="col-md-4">
        <div class="admin-option text-center">
          <img src="images/viewv.png" alt="View Vehicles Icon" width="80" class="img-fluid mb-3">
          <h5>View Vehicles</h5>
          <form action="vehiclestb" method="post">
            <button type="submit" class="btn-custom">Manage</button>
          </form>
        </div>
      </div>

      <!-- View Drivers -->
      <div class="col-md-4">
        <div class="admin-option text-center">
          <img src="images/viewd.PNG" alt="View Drivers Icon" width="80" class="img-fluid mb-3">
          <h5>View Drivers</h5>
          <form action="driverstb" method="post">
            <button type="submit" class="btn-custom">Manage</button>
          </form>
        </div>
      </div>
    </div>

    <!-- Update Section -->
    <div class="row">
      <h4 class="section-title">Update Users / Vehicles / Drivers</h4>
      
      <!-- Update Users -->
      <div class="col-md-4">
        <div class="admin-option text-center">
          <img src="images/updateu.PNG" alt="Update Users Icon" width="80" class="img-fluid mb-3">
          <h5>Update Users</h5>
          <form action="upreg.jsp" method="get">
            <button type="submit" class="btn-custom">Manage</button>
          </form>
        </div>
      </div>

      <!-- Update Vehicles -->
      <div class="col-md-4">
        <div class="admin-option text-center">
          <img src="images/updatev.PNG" alt="Update Vehicles Icon" width="80" class="img-fluid mb-3">
          <h5>Update Vehicles</h5>
          <form action="upv.jsp" method="get">
            <button type="submit" class="btn-custom">Manage</button>
          </form>
        </div>
      </div>

      <!-- Update Drivers -->
      <div class="col-md-4">
        <div class="admin-option text-center">
          <img src="images/updateu.PNG" alt="Update Drivers Icon" width="80" class="img-fluid mb-3">
          <h5>Update Drivers</h5>
          <form action="updriver.jsp" method="get">
            <button type="submit" class="btn-custom">Manage</button>
          </form>
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
