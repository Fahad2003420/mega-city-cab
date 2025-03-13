<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>About Us - Mega City Cab Service</title>
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
         height: 50vh;
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
      /* Main Content */
      .content-section {
         padding: 60px 20px;
      }
      .info-tile {
         background-color: rgba(0,0,0,0.8);
         border: 1px solid #FFEB3B;
         border-radius: 10px;
         box-shadow: 0 4px 8px rgba(255,235,59,0.2);
         padding: 30px;
         margin-bottom: 30px;
      }
      .info-tile h4 {
         color: #FFEB3B;
         margin-bottom: 15px;
      }
      .info-tile p, .info-tile ul {
         color: #ccc;
      }
      .info-tile ul {
         list-style-type: disc;
         margin-left: 20px;
      }
      /* Footer */
      footer {
         background-color: #000;
         color: #FFEB3B;
         padding: 20px 0;
         text-align: center;
         border-top: 3px solid #FFEB3B;
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
                  <a class="nav-link" href="login.jsp">Login</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="reg.jsp">Register</a>
               </li>
            </ul>
         </div>
      </div>
   </nav>
   
   <!-- Hero Section -->
   <header class="hero">
      <div class="hero-content">
         <h1>About Mega City Cab Service</h1>
         <p>Your trusted travel partner in Colombo</p>
      </div>
   </header>
   
   <!-- Main Content -->
   <section class="content-section container">
      <div class="info-tile">
         <h4>Our Story</h4>
         <p>
            Mega City Cab Service was founded with the vision of simplifying urban transportation. Our journey began with a commitment to provide reliable, comfortable, and affordable rides for everyone in Colombo. Each journey with us is crafted to ensure a smooth and hassle-free experience.
         </p>
      </div>
      <div class="info-tile">
         <h4>Why Choose Us?</h4>
         <ul>
            <li>Professional and courteous drivers</li>
            <li>Competitive pricing without compromising quality</li>
            <li>24/7 availability for your convenience</li>
            <li>Real-time ride tracking for enhanced safety</li>
            <li>A diverse fleet to suit every need</li>
         </ul>
      </div>
      <div class="info-tile">
         <h4>Our Fleet</h4>
         <p>
            We offer a varied range of vehicles—from sleek sedans to spacious minivans and buses—to ensure that no matter the size of your group or the nature of your trip, we have the perfect ride for you.
         </p>
      </div>
   </section>
   
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
