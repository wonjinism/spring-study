<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Admin</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>

<table class="table table-bordered">
	<thead>
	<tr>
		<th>menu_seq</th>
		<th>menu_type</th>
		<th>menu_name</th>
		<th>menu_description</th>
		<th>original_price</th>
		<th>promotion_price</th>
    	<th>promotion_type</th>
    	<th>release_date</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach var="menu" items="${menuList}">
	<tr>
		<td>${menu.menu_seq}</td>
		<td>${menu.menu_type}</td>
		<td>${menu.menu_name}</td>
		<td>${menu.menu_description}</td>
		<td>${menu.original_price}</td>
		<td>${menu.promotion_price}</td>
    	<td>${menu.promotion_type}</td>
    	<td>${menu.release_date}</td>		
	</tr>
	</c:forEach>
	
	</tbody>
</table>
</body>
</html>
