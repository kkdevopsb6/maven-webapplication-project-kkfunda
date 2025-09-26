<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA E-Commerce</title>
    <link rel="icon" href="images/kkfunda.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f8f8;
            font-family: 'Arial', sans-serif;
        }
        .navbar {
            background-color: #000;
        }
        .navbar-brand, .nav-link {
            color: #ff0000 !important;
            font-weight: bold;
        }
        .nav-link:hover {
            color: #ffffff !important;
        }
        .banner {
            background: linear-gradient(to right, #000, #ff0000);
            color: white;
            padding: 60px 20px;
            text-align: center;
        }
        .banner h1 {
            font-size: 3rem;
        }
        .card {
            border: 1px solid #ddd;
            transition: transform 0.3s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-title {
            color: #000;
        }
        .btn-buy {
            background-color: #ff0000;
            color: white;
        }
        .btn-buy:hover {
            background-color: #cc0000;
        }
        footer {
            background-color: #000;
            color: white;
            padding: 20px 0;
            text-align: center;
            margin-top: 40px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">🛒 KK FUNDA Store </a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#products">Products</a></li>
                <li class="nav-item"><a class="nav-link" href="#cart">Cart</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Banner / Hero -->
<div id="home" class="banner">
    <h1>Welcome to KK FUNDA E-Commerce</h1>
    <p>Redefining Shopping Experience 🚀</p>
</div>

<!-- Product Section -->
<div id="products" class="container mt-5">
    <h2 class="text-center text-danger mb-4">🛍️ Featured Products</h2>
    <div class="row">

        <!-- Product Card 1 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 1">
                <div class="card-body">
                    <h5 class="card-title">Wireless Headphones</h5>
                    <p class="card-text">High quality audio. ₹1,999</p>
                    <button class="btn btn-buy w-100">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Product Card 2 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 2">
                <div class="card-body">
                    <h5 class="card-title">Smart Watch</h5>
                    <p class="card-text">Track fitness in style. ₹3,499</p>
                    <button class="btn btn-buy w-100">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Product Card 3 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 3">
                <div class="card-body">
                    <h5 class="card-title">Bluetooth Speaker</h5>
                    <p class="card-text">Crisp sound. ₹2,199</p>
                    <button class="btn btn-buy w-100">Add to Cart</button>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Cart Section -->
<div id="cart" class="container mt-5">
    <h2 class="text-center text-danger mb-4">🛒 Your Cart</h2>
    <p class="text-center">Your cart is currently empty.</p>
</div>

<!-- Contact Section -->
<div id="contact" class="container mt-5">
    <h2 class="text-center text-danger mb-4">📞 Contact Us</h2>
    <div class="text-center">
        <img src="images/kkfunda.jpg" alt="KK FUNDA" width="120" class="rounded-circle mb-3">
        <p><strong>Address:</strong> Martha Halli, Bangalore</p>
        <p><strong>Phone:</strong> +91-9676831734</p>
        <p><strong>Email:</strong> <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a></p>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>© 2025 KK FUNDA E-Commerce. All rights reserved.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
