<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<h1>채팅 리스트</h1>
	<form action="createRoom" method="get">
		<input text="text" name="name" placeholder="방 이름"/>
		<button>채팅방 만들기</button>
	</form>
	<c:if test="${chatList != null}">
	<table>
		<tr>
			<th>생성자</th>
			<th>채팅방 이름</th>
			<th>참가자 수</th>
			<th>생성일시</th>
		</tr>
		<c:forEach var="chat" items="${chatList}">
			<tr>
				<td>${chat.user_id}</td>
				<td>${chat.name}</td>
				<td>${chat.user_count}</td>
				<td>${chat.indate}</td>
			</tr>
		</c:forEach>
	</table>
	</c:if>
	<c:if test="${chatList == null}">
	<h3>생성된 채팅방이 없습니다.</h3>
	</c:if>
</body>
</html>
