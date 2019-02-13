<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="resources/style.css"> 
    <title>TODO 리스트</title>
</head>
<body>
    <header>
        <div class="createTodo">새로운 TODO 등록</div>
    </header>
    <section>
        <div id="todo" class="column">
            <div class="column_title">TODO</div>
            <div class="column_card">
                <div class="todo_wrap">
                    <span class="todo_title">자바스크립트 공부하기</span><br />
                    <span class="todo_info">
                        <span>등록날짜: 2019.02.13,&nbsp;</span>
                        <span>김원진,&nbsp;</span>
                        <span>우선순위 1</span>
                    </span>
                </div>
                <button class="btn btn_move">→</button>
            </div>
        </div>
        <div id="doing" class="column">
            <div class="column_title">DOING</div>
        </div>
        <div id="done" class="column">
            <div class="column_title">DONE</div>
            <div class="column_card">
                    <div class="todo_wrap">
                        <span class="todo_title">자바스크립트 공부하기</span><br />
                        <span class="todo_info">
                            <span>등록날짜: 2019.02.13,&nbsp;</span>
                            <span>김원진,&nbsp;</span>
                            <span>우선순위 1</span>
                        </span>
                    </div>
                    <button class="btn btn_remove">X</button>
                </div>
        </div>
    </section>
</body>
</html>