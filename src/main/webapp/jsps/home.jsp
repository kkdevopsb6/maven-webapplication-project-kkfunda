<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Amazon Clone - KK FUNDA</title>
    <link rel="icon" href="images/kkfunda.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f8f9fa;
        }
        .navbar {
            background-color: #232f3e;
        }
        .navbar-brand, .nav-link {
            color: white !important;
        }
        .section {
            display: none;
            padding: 20px;
        }
        .active-section {
            display: block;
        }
        footer {
            background: #232f3e;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">KK Amazon Clone</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#" onclick="showSection('home')">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#" onclick="showSection('products')">Products</a></li>
                <li class="nav-item"><a class="nav-link" href="#" onclick="showSection('cart')">Cart</a></li>
                <li class="nav-item"><a class="nav-link" href="#" onclick="showSection('profile')">Profile</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Sections -->
<div class="container mt-4">

    <!-- Home Section -->
    <div id="home" class="section active-section">
        <h2>🏠 Welcome to KK FUNDA Amazon Clone</h2>
        <p>This is the Home page. Discover great products, offers, and more.</p>
    </div>

    <!-- Products Section -->
    <div id="products" class="section">
        <h2>🛒 Products</h2>
        <div class="row">
            <%-- Dummy Product Cards --%>
            <div class="col-md-4">
                <div class="card">
                    <img src="https://via.placeholder.com/200" class="card-img-top" alt="Product 1">
                    <div class="card-body">
                        <h5 class="card-title">Product 1</h5>
                        <p class="card-text">₹999</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <img src="https://via.placeholder.com/200" class="card-img-top" alt="Product 2">
                    <div class="card-body">
                        <h5 class="card-title">Product 2</h5>
                        <p class="card-text">₹1,499</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Add more products as needed -->
        </div>
    </div>

    <!-- Cart Section -->
    <div id="cart" class="section">
        <h2>🛍️ Your Cart</h2>
        <p>Your cart is currently empty. Start shopping now!</p>
    </div>

    <!-- Profile Section -->
    <div id="profile" class="section">
        <h2>👤 Profile</h2>
        <p><b>Name:</b> KK FUNDA User</p>
        <p><b>Email:</b> <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a></p>
        <p><b>Location:</b> Bangalore, India</p>
    </div>

</div>

<!-- Footer -->
<footer>
    <p>© 2025 KK FUNDA Amazon Clone</p>
    <p><small>Powered by JSP & Bootstrap</small></p>
</footer>

<!-- JavaScript for Navigation -->
<script>
    function showSection(sectionId) {
        const sections = document.querySelectorAll('.section');
        sections.forEach(sec => sec.classList.remove('active-section'));
        document.getElementById(sectionId).classList.add('active-section');
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
