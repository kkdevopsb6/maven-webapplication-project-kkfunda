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
