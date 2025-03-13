<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update Driver - Mega City Cab Service</title>
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
        /* Update Form Section */
        .update-section {
            padding: 40px 20px;
        }
        .card {
            background-color: rgba(0,0,0,0.8);
            border: 1px solid #FFEB3B;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(255,235,59,0.2);
            transition: transform 0.3s ease-in-out;
        }
        .card:hover {
            transform: scale(1.02);
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
        .btn-submit {
            background-color: #FFEB3B;
            color: #000;
            border: none;
            padding: 12px 25px;
            border-radius: 25px;
            font-size: 1rem;
            font-weight: bold;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        .btn-submit:hover {
            background-color: #e6d32e;
        }
        .profile-img {
            width: 100px;
            border-radius: 50%;
            border: 3px solid #FFEB3B;
            margin-bottom: 1.5rem;
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
    <header class="hero">
        <div class="hero-content">
            <h1>Update Driver Profile</h1>
            <p>Modify driver information as needed</p>
        </div>
    </header>

    <!-- Update Section -->
    <section class="update-section container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body p-4">
                        <div class="text-center mb-4">
                            <h4>Driver Profile</h4>
                            <p class="text-muted">Account Status: <span class="text-success">Active</span></p>
                        </div>
                        <hr class="border-secondary">
                        <form method="post" action="driverup">
                            <div class="mb-3">
                                <label class="form-label">Driver ID</label>
                                <input type="text" class="form-control" name="driver_id" placeholder="Driver ID" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">License Number</label>
                                <input type="text" class="form-control" name="license_no" placeholder="License Number" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address</label>
                                <input type="text" class="form-control" name="address" placeholder="Address" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Contact Number</label>
                                <input type="number" class="form-control" name="contact_no" placeholder="Contact Number" required>
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-submit">Update Profile</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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