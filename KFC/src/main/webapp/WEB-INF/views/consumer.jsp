<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Admin</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	<style>
		.card{
			float: left;
			width: 300px;
			height: 500px;
		}
	</style>
</head>
<body>

<table class="table table-bordered">
	<thead>
	<tr>
		<th>menu_seq</th>
		<th>menu_name</th>
		<th>menu_description</th>
		<th>original_price</th>
	</tr>
	</thead>
	<c:forEach var="menu" items="${menuList}">
	<div class="card" style="width: 18rem;">
	  <a href="detail?menu_seq=${menu.menu_seq}"><img src="${menu.image}" class="card-img-top" alt="${menu.menu_name}"></a>
	  <div class="card-body">
	    <h5 class="card-title"><a href="detail?menu_seq=${menu.menu_seq}">${menu.menu_name}</a></h5>
	    <p class="card-text"><a href="detail?menu_seq=${menu.menu_seq}">${menu.menu_description}</a></p>
	    <p class="card-text">${menu.original_price}</p>
	    <a href="addCart" class="btn btn-primary">장바구니 담기</a>
	    <a href="directOrder" class="btn btn-primary">바로 구매</a>
	  </div>
	</div>
	</c:forEach>
</table>
</body>
</html>
