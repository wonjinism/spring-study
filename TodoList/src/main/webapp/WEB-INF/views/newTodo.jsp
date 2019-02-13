<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="resources/style.css"> 
    <title>할일 등록</title>
</head>
<body>
    <div class="form_wrap">
        <h2 class="form_title">할일 등록</h2>
        <form action="newTodo" method="post">
            <ul>
                <li>
                    <label class="input_title" for="title">어떤 일인가요?</label><br />
                    <input type="text" id="title" name="title" placeholder="swift 공부하기(24자까지)"/><br />
                </li>
                <li>
                    <label class="input_title" for="name">누가 할 일인가요?</label><br />
                    <input type="text" id="name" name="name" placeholder="홍길동"/>
                </li>
                <li>
                    <span class="input_title">우선순위를 선택하세요</span><br />
                    <label class="seq"><input type="radio" name="seq" value="1">1순위</label>
                    <label class="seq"><input type="radio" name="seq" value="2">2순위</label>
                    <label class="seq"><input type="radio" name="seq" value="3">3순위</label>
                </li>
            </ul>
            <ul class="btn_left">
                <li class="btn_prev"><a href="/todolist">&lt;&nbsp;이전</a></li>
            </ul>
            <ul class="btn_right">
                <li class="btn_form btn_reset"><button onclick="">내용지우기</button></li>
                <li class="btn_form btn_submit"><button>제출</button></li>
            </ul>
        </form>
    </div>
</body>
</html>