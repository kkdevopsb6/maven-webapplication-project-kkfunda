<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA | Home</title>
    <link rel="icon" href="images/kkfunda.jpg">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #121212;
            color: #f1c40f;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        header {
            background: linear-gradient(90deg, #000000, #f1c40f);
            padding: 25px;
            text-align: center;
            border-bottom: 5px solid #f1c40f;
        }

        header h1 {
            font-size: 2.5rem;
            color: #fff;
        }

        header h3 {
            color: #ffe066;
            font-weight: 300;
        }

        .info-card {
            background: #1e1e1e;
            border-left: 5px solid #f1c40f;
            border-radius: 10px;
            padding: 25px;
            margin-top: 30px;
            box-shadow: 0px 5px 20px rgba(255, 255, 0, 0.1);
        }

        .info-card h3, .info-card h4 {
            color: #f1c40f;
        }

        .btn-yellow {
            background-color: #f1c40f;
            color: #000;
            border: none;
        }

        .btn-yellow:hover {
            background-color: #ffd700;
            color: #000;
        }

        footer {
            background-color: #000;
            color: #f1c40f;
            padding: 20px;
            margin-top: 50px;
            text-align: center;
        }

        a {
            color: #f1c40f;
        }

        a:hover {
            color: #fff200;
            text-decoration: underline;
        }

        .logo {
            border: 3px solid #f1c40f;
        }
    </style>
</head>
<body>

<header>
    <h1>🚀 Welcome to KK FUNDA SRE Portal 🚀</h1>
    <h3>Training | Development | Consulting</h3>
</header>

<div class="container">

    <!-- Server Info -->
    <div class="info-card">
        <h3>🌐 Server Side Information</h3>
        <hr>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
        %>
        <p><strong>Server Host Name:</strong> <%= inetAddress.getHostName() %></p>
        <p><strong>Server IP Address:</strong> <%= ip %></p>
    </div>

    <!-- Client Info -->
    <div class="info-card">
        <h3>💻 Client Side Information</h3>
        <hr>
        <p><strong>Client IP Address:</strong> <%= request.getRemoteAddr() %></p>
        <p><strong>Client Host Name:</strong> <%= request.getRemoteHost() %></p>
    </div>

    <!-- Contact Info -->
    <div class="info-card text-center">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo" width="120" class="mb-3 rounded-circle shadow logo">
        <h4>KK FUNDA</h4>
        <p><strong>Address:</strong> Martha Halli, Bangalore</p>
        <p><strong>Phone:</strong> +91-9676831734</p>
        <p><strong>Email:</strong> <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a></p>
        <a href="mailto:kkeducation@gmail.com" class="btn btn-yellow mt-3">📧 Mail to KK FUNDA</a>
    </div>

    <!-- Service Links -->
    <div class="info-card text-center">
        <h4>⚙️ Our Services</h4>
        <a href="services/employee/getEmployeeDetails" class="btn btn-yellow mt-2">👨‍💼 Get Employee Details</a>
    </div>

</div>

<footer>
    <p>© 2024 KK FUNDA Training & Development Center</p>
    <p><small>Powered by <a href="https://google.com/" target="_blank">KK FUNDA</a></small></p>
</footer>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
