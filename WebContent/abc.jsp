<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String imgDataBase64=request.getAttribute("ab").toString(); %>
<img src="data:image/gif;base64,<%= imgDataBase64 %>" alt="images Here" width="130px" height="90px"/>
</body>
</html>