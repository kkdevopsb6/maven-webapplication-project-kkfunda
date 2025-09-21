<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KK FUNDA | Home</title>
<link href="images/kkfunda.jpg" rel="icon">
<!-- Bootstrap & Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background: #f4f7fb;
    }
    .navbar {
        background: linear-gradient(90deg, #007bff, #00c6ff);
    }
    .navbar-brand {
        font-weight: bold;
        font-size: 1.4rem;
    }
    .info-card {
        border-radius: 15px;
        box-shadow: 0 6px 12px rgba(0,0,0,0.1);
        padding: 25px;
        transition: transform 0.2s;
    }
    .info-card:hover {
        transform: translateY(-5px);
    }
    .icon {
        font-size: 2rem;
        color: #007bff;
    }
    footer {
        background: linear-gradient(90deg, #007bff, #00c6ff);
        color: white;
        padding: 15px;
        text-align: center;
        margin-top: 40px;
    }
    .social-icons a {
        margin: 0 10px;
        color: white;
        font-size: 1.3rem;
    }
    .dark-mode {
        background: #121212;
        color: #f5f5f5;
    }
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container">
    <a class="navbar-brand" href="#">🚀 KK FUNDA</a>
    <button class="btn btn-light btn-sm" id="darkToggle">🌙 Toggle Mode</button>
  </div>
</nav>

<div class="container mt-4">

    <!-- Server Info -->
    <div class="info-card bg-white mb-4">
        <h4><i class="bi bi-hdd-network icon"></i> Server Info</h4>
        <hr>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
        %>
        <p><b>Host Name:</b> <%= inetAddress.getHostName() %></p>
        <p><b>IP Address:</b> <%= ip %></p>
        <p><b>Current Time:</b> <span id="datetime"></span></p>
    </div>

    <!-- Client Info -->
    <div class="info-card bg-white mb-4">
        <h4><i class="bi bi-pc-display icon"></i> Client Info</h4>
        <hr>
        <p><b>IP Address:</b> <%= request.getRemoteAddr() %></p>
        <p><b>Host Name:</b> <%= request.getRemoteHost() %></p>
    </div>

    <!-- Services -->
    <div class="info-card text-center bg-white mb-4">
        <h4>⚙️ Our Services</h4>
        <hr>
        <a href="services/employee/getEmployeeDetails" class="btn btn-success m-2"><i class="bi bi-person-badge"></i> Employee Details</a>
        <a href="#" class="btn btn-warning m-2"><i class="bi bi-cloud-upload"></i> Cloud Consulting</a>
        <a href="#" class="btn btn-primary m-2"><i class="bi bi-laptop"></i> DevOps Training</a>
    </div>

    <!-- Contact Info -->
    <div class="info-card text-center bg-white">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo" width="120" class="mb-3 rounded-circle shadow">
        <h4>KK FUNDA</h4>
        <p><b>Address:</b> Martha Halli, Bangalore</p>
        <p><b>Phone:</b> +91-9676831734</p>
        <p><b>Email:</b> <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a></p>
        <div class="mt-3 social-icons">
            <a href="https://wa.me/919676831734" target="_blank"><i class="bi bi-whatsapp"></i></a>
            <a href="mailto:kkeducationblr@gmail.com"><i class="bi bi-envelope-fill"></i></a>
            <a href="https://linkedin.com" target="_blank"><i class="bi bi-linkedin"></i></a>
        </div>
    </div>

</div>

<!-- Footer -->
<footer>
    <p>© 2024 KK FUNDA Training & Development Center</p>
    <p><small>Powered by KK FUNDA</small></p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Dark Mode & DateTime Script -->
<script>
    document.getElementById("darkToggle").addEventListener("click", () => {
        document.body.classList.toggle("dark-mode");
    });

    function updateTime() {
        document.getElementById("datetime").innerText = new Date().toLocaleString();
    }
    setInterval(updateTime, 1000);
    updateTime();
</script>

</body>
</html>
