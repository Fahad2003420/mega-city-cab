<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
      margin: 0;
      background-color: #000;
      color: #fff;
      font-family: 'Lora', serif;
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
    .navbar-brand {
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      color: #FFEB3B !important;
    }
    .nav-link {
      font-family: 'Lora', serif;
      color: #ccc !important;
      font-weight: 500;
    }
    .nav-link:hover {
      color: #FFEB3B !important;
    }
    /* Hero Section */
    .hero {
      background: linear-gradient(90deg, #000, #333);
      color: #FFEB3B;
      text-align: center;
      padding: 100px 20px;
      border-bottom: 3px solid #FFEB3B;
    }
    /* Button Custom */
    .btn-custom {
      background-color: #FF7F50;
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
    /* Container */
    .container {
      margin-top: 40px;
    }
    /* Vehicle Tiles Section */
    .vehicle-tiles .tile {
      background-color: rgba(0,0,0,0.8);
      border: 1px solid #FFEB3B;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(255,235,59,0.3);
      transition: transform 0.3s ease-in-out;
      cursor: pointer;
      margin-bottom: 20px;
    }
    .vehicle-tiles .tile:hover {
      transform: scale(1.05);
    }
    .tile-img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
    }
    .tile-text {
      padding: 15px;
      text-align: center;
    }
    .tile-title {
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      color: #FFEB3B;
    }
    .tile-description {
      color: #ccc;
    }
    .tile-price {
      font-size: 18px;
      font-weight: bold;
      color: #FFEB3B;
    }
    /* Footer */
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
            <a class="nav-link active" aria-current="page" href="index.jsp">Log out</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="about.jsp">About</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>

  <!-- Hero Section -->
  <div class="hero">
    <h1>Welcome to Mega City Cab Service</h1>
    <p>Comfortable and better travel!</p>
  </div>

  <!-- Vehicle Tiles Section -->
  <div class="container text-center vehicle-tiles">
    <h3>Our Vehicle</h3>
    <div class="row mt-4">
      <div class="col-md-3">
        <div class="tile">
          <img src="images/van.png" alt="Van" class="tile-img">
          <div class="tile-text">
            <h4 class="tile-title">Van</h4>
            <p class="tile-description">Comfortable for family trips.</p>
            <p class="tile-price">Rs 160 per Km</p>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="tile">
          <img src="images/car.jpg.png" alt="Car" class="tile-img">
          <div class="tile-text">
            <h4 class="tile-title">Car</h4>
            <p class="tile-description">Better For personal or couple trips.</p>
            <p class="tile-price">Rs 120 per Km</p>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="tile">
          <img src="images/minivan.png" alt="Mini Van" class="tile-img">
          <div class="tile-text">
            <h4 class="tile-title">Mini Van</h4>
            <p class="tile-description"> family Trips .</p>
            <p class="tile-price">Rs 130 per Km</p>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="tile">
          <img src="images/BUS.png" alt="Bus" class="tile-img">
          <div class="tile-text">
            <h4 class="tile-title">Bus</h4>
            <p class="tile-description">Better for Big Trips and events.</p>
            <p class="tile-price">Rs 200 per Km</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- View Vehicles and Book Now Section -->
  <div class="container mt-5 text-center">
    <div class="row justify-content-center">
      <!-- View Vehicles Section -->
      <div class="col-md-4 mb-4">
        <div class="card text-center admin-option">
          <div class="card-body">
            <img src="images/viewv.png" alt="View Vehicles Icon" class="img-fluid mb-3" width="80">
            <h5 class="card-title">View Vehicles</h5>
            <form action="vehiclestb" method="post">
              <button type="submit" class="btn btn-primary">Choose</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- Book Now Section -->
    <div class="row justify-content-center">
      <div class="col-md-4 mb-4">
        <a href="booking.jsp" class="btn btn-success btn-lg">Book Now</a>
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
