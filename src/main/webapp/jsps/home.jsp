<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Robotics & AI Home Page</title>
<link href="images/robot-icon.png" rel="icon">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f8fb;
        color: #333;
    }
    h1, h2, h3 {
        text-align: center;
        color: #004466;
    }
    .robot-section {
        display: flex;
        justify-content: center;
        gap: 30px;
        margin-top: 30px;
    }
    .robot-card {
        border: 2px solid #ccc;
        border-radius: 15px;
        padding: 20px;
        width: 250px;
        background: white;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        text-align: center;
    }
    .robot-card img {
        width: 200px;
        border-radius: 10px;
    }
    .footer {
        text-align: center;
        margin-top: 30px;
        font-size: 14px;
        color: gray;
    }
</style>
</head>
<body>

<h1>🤖 Welcome to Robotics & AI Hub 🤖</h1>
<h2>KK FUNDA – Robotics & DevOps Lab</h2>
<hr>

<h3>Server Side IP Address</h3>
<% 
    InetAddress inetAddress = InetAddress.getLocalHost();
    String ip = inetAddress.getHostAddress();
    out.println("Server Host Name :: " + inetAddress.getHostName()); 
%>
<br>
<% out.println("Server IP Address :: " + ip); %>

<hr>
<h3>Client Side IP Address</h3>
<% out.print("Client IP Address :: " + request.getRemoteAddr()); %><br>
<% out.print("Client Host Name :: " + request.getRemoteHost()); %>

<hr>
<h2>🚀 Robotics Models</h2>
<div class="robot-section">
    <div class="robot-card">
        <img src="images/robot-arm.jpg" alt="Robot Arm">
        <h3>Industrial Robot Arm</h3>
        <p>Used in automation, assembly lines, and precision tasks.</p>
    </div>
    <div class="robot-card">
        <img src="images/humanoid-robot.jpg" alt="Humanoid Robot">
        <h3>Humanoid Robot</h3>
        <p>Designed to mimic human interaction and assist in services.</p>
    </div>
    <div class="robot-card">
        <img src="images/drone-robot.jpg" alt="Drone">
        <h3>AI Drone</h3>
        <p>For aerial robotics, navigation, and surveillance.</p>
    </div>
</div>

<hr>
<div class="footer">
    <p>📍 KK FUNDA Robotics Lab, Bangalore, India</p>
    <p>📞 +91-9676831734 | ✉️ <a href="mailto:kkeducation@gmail.com">kkeducation@gmail.com</a></p>
    <p>&copy; 2025 KK FUNDA Robotics & AI</p>
</div>

</body>
</html>
