<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>주문하신 내역</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>

<h1>주문하신 내역</h1>
<table class="table table-bordered">
	<tr>
		<td>menu_name</td>
		<td>quantity</td>
	</tr>
<c:forEach var="orderedMenu" items="orderedMenuList">
	<tr>
		<td>${orderedMenu.menu_name}</td>
		<td>${orderedMenu.quantity}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>