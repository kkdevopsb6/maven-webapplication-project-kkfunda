<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.xml.parsers.DocumentBuilder"%>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory"%>
<%@ page import="org.w3c.dom.Document"%>
<%@ page import="org.w3c.dom.Element"%>
<%@ page import="org.w3c.dom.NodeList"%>
<%@ page import="java.io.File"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
    <style>
        body { font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; background-color: #f0f2f5; }
        .login-container { background-color: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); width: 300px; text-align: center; }
        h2 { margin-bottom: 20px; color: #333; }
        input[type="text"], input[type="password"] { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        input[type="submit"] { background-color: #007bff; color: white; padding: 10px; border: none; border-radius: 4px; cursor: pointer; width: 100%; }
        .error { color: red; margin-bottom: 10px; }
    </style>
</head>
<body>

<%
    String errorMessage = "";
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean loginSuccessful = false;

        try {
            // Path to the XML file
            String path = application.getRealPath("/WEB-INF/data/students.xml");
            File xmlFile = new File(path);
            
            if (xmlFile.exists()) {
                DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
                DocumentBuilder builder = factory.newDocumentBuilder();
                Document doc = builder.parse(xmlFile);
                doc.getDocumentElement().normalize();

                NodeList studentList = doc.getElementsByTagName("student");
                for (int i = 0; i < studentList.getLength(); i++) {
                    Element studentElement = (Element) studentList.item(i);
                    String storedUsername = studentElement.getElementsByTagName("username").item(0).getTextContent();
                    String storedPassword = studentElement.getElementsByTagName("password").item(0).getTextContent();
                    
                    if (username.equals(storedUsername) && password.equals(storedPassword)) {
                        session.setAttribute("username", username);
                        response.sendRedirect("welcome.jsp");
                        return;
                    }
                }
            } else {
                errorMessage = "Error: Student data file not found.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            errorMessage = "An error occurred during login.";
        }
        
        if (!loginSuccessful) {
            errorMessage = "Invalid username or password.";
        }
    }
%>

<div class="login-container">
    <h2>Student Login</h2>
    <div class="error"><%= errorMessage %></div>
    <form action="login.jsp" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="submit" value="Login">
    </form>
</div>

</body>
</html>
