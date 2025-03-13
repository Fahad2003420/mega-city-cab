<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Urban Cab Express</title>
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
    /* Headings using Montserrat */
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
    /* Custom Search Button */
    .btn-search {
      background-color: #FFEB3B;
      color: #000;
      border: none;
      border-radius: 25px;
      padding: 8px 15px;
      font-size: 0.9rem;
      transition: background-color 0.3s ease;
    }
    .btn-search:hover {
      background-color: #e6d32e;
    }
    /* Hero Section */
    .hero {
      position: relative;
      background: url('images/BG01.jpg') no-repeat center center/cover;
      height: 100vh;
    }
    .hero::before {
      content: "";
      position: absolute;
      top: 0; left: 0;
      width: 100%; height: 100%;
      background: rgba(0,0,0,0.6);
    }
    .hero-content {
      position: relative;
      z-index: 2;
      top: 50%;
      transform: translateY(-50%);
      text-align: center;
      padding: 0 20px;
    }
    .hero h1 {
      font-size: 4rem;
      margin-bottom: 20px;
      color: #FFEB3B;
    }
    .hero p {
      font-size: 1.5rem;
      margin-bottom: 30px;
      color: #fff;
    }
    .btn-hero {
      background-color: #FFEB3B;
      color: #000;
      border: none;
      padding: 15px 30px;
      font-size: 1.2rem;
      border-radius: 30px;
      transition: background-color 0.3s ease;
    }
    .btn-hero:hover {
      background-color: #e6d32e;
    }
    /* Features Section */
    .features {
      background-color: #111;
      padding: 60px 0;
    }
    .features h2 {
      color: #FFEB3B;
      margin-bottom: 40px;
    }
    .feature-card {
      background-color: rgba(0,0,0,0.8);
      border: 1px solid #FFEB3B;
      border-radius: 10px;
      padding: 30px;
      transition: transform 0.3s ease;
    }
    .feature-card:hover {
      transform: scale(1.05);
    }
    .feature-card h4 {
      color: #FFEB3B;
      margin-bottom: 15px;
    }
    .feature-card p {
      color: #ccc;
    }
    /* Fleet Section */
    .fleet {
      padding: 60px 0;
    }
    .fleet h2 {
      color: #FFEB3B;
      margin-bottom: 40px;
    }
    .fleet .card {
      background-color: rgba(0,0,0,0.8);
      border: 1px solid #FFEB3B;
      border-radius: 10px;
      transition: transform 0.3s ease;
    }
    .fleet .card:hover {
      transform: scale(1.05);
    }
    .fleet .card h4 {
      color: #FFEB3B;
    }
    .fleet .card p {
      color: #ccc;
    }
    /* About Section */
    .about {
      background-color: #111;
      padding: 60px 0;
    }
    .about h2 {
      color: #FFEB3B;
      margin-bottom: 40px;
    }
    .about p {
      color: #ccc;
      font-size: 1.1rem;
    }
    /* Footer */
    footer {
      background-color: #000;
      color: #FFEB3B;
      padding: 20px 0;
      text-align: center;
    }
  </style>
</head>
<body>
  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">MEGA CITY CABS</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
              data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" 
              aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
          <li class="nav-item"><a class="nav-link" href="reg.jsp">Sign Up</a></li>
          <li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
        </ul>
        <form class="d-flex ms-3" role="search">
          <input class="form-control me-2" type="search" placeholder="Search rides" aria-label="Search">
          <button class="btn btn-search" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
  
  <!-- Hero Section -->
  <header class="hero">
    <div class="hero-content container">
      <h1>Discover Mega City Cab</h1>
      <p>Your dependable ride solution in the heart of the city.</p>
      <a href="reg.jsp" class="btn btn-hero">Book Now</a>
    </div>
  </header>
  
  <!-- Features Section -->
  <section class="features">
    <div class="container">
      <h2 class="text-center">Why Ride With Us?</h2>
      <div class="row mt-4">
        <div class="col-md-4">
          <div class="feature-card text-center">
            <h4>Exceptional Service</h4>
            <p>Experience prompt and courteous rides every time you travel with us.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="feature-card text-center">
            <h4>24/7 Availability</h4>
            <p>Our fleet is ready for you day or night, ensuring you're never left waiting.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="feature-card text-center">
            <h4>Cost-Effective Fares</h4>
            <p>Enjoy competitive prices that offer great value without compromising comfort.</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!-- Fleet Section -->
  <section class="fleet">
    <div class="container">
      <h2 class="text-center">Our Vehicles</h2>
      <div class="row mt-4 g-4">
        <!-- Mini Van -->
        <div class="col-md-3">
          <div class="card p-3 text-center">
            <img src="images/minivan.png" class="card-img-top img-fluid mb-2" alt="Mini Van">
            <div class="card-body">
              <h4 class="card-title">MINI VAN</h4>
              <p class="card-text">Ideal for small groups seeking comfort and convenience.</p>
              <p class="card-text">Rs 130 per Km</p>
            </div>
          </div>
        </div>
        <!-- Sedan -->
        <div class="col-md-3">
          <div class="card p-3 text-center">
            <img src="images/van.png" class="card-img-top img-fluid mb-2" alt="Sedan">
            <div class="card-body">
              <h4 class="card-title">VAN</h4>
              <p class="card-text">Spacious and robust, ideal for family outings and long trips</p>
              <p class="card-text">Rs 160 per Km</p>
            </div>
          </div>
        </div>
        <!-- SUV -->
        <div class="col-md-3">
          <div class="card p-3 text-center">
            <img src="images/car.jpg.png" class="card-img-top img-fluid mb-2" alt="SUV">
            <div class="card-body">
              <h4 class="card-title">CAR</h4>
              <p class="card-text">Perfect for solo travelers or couples on the move</p>
              <p class="card-text">Rs 120 per Km</p>
            </div>
          </div>
        </div>
        <!-- Shuttle Bus -->
        <div class="col-md-3">
          <div class="card p-3 text-center">
            <img src="images/BUS.png" class="card-img-top img-fluid mb-2" alt="Shuttle Bus">
            <div class="card-body">
              <h4 class="card-title">Bus</h4>
              <p class="card-text">Perfect for group travel and corporate transfers.</p>
              <p class="card-text">Rs 200 per Km</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!-- About Section -->
  <section class="about">
    <div class="container">
      <h2 class="text-center">Who We Are</h2>
      <p class="text-center mt-4">
        Mega City Cab is dedicated to delivering safe, efficient, and affordable transportation throughout the urban landscape. Our professional team and modern fleet ensure every ride is a premium experience.
      </p>
    </div>
  </section>
  
  <!-- Footer -->
  <footer>
    <div class="container">
      &copy; 2025 Mega City Cab | All Rights Reserved
    </div>
  </footer>
  
  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
