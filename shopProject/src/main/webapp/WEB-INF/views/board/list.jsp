<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Board List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="fw-bold text-center mb-4">게시판</h2>

    <div class="text-end mb-3">
        <a href="/board/create" class="btn btn-dark btn-sm">새 글 작성</a>
    </div>

    <table class="table table-hover text-center align-middle">
        <thead class="table-dark">
        <tr>
            <th style="width:10%;">번호</th>
            <th style="width:20%;">작성자</th>
            <th style="width:50%;">내용</th>
            <th style="width:20%;">작성일</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="board" items="${boardList}">
            <tr>
                <td>${board.id}</td>
                <td>${board.name}</td>
                <td class="text-start">
                    <a href="/board/detail/${board.id}" class="text-decoration-none text-dark">
                        ${board.content}
                    </a>
                </td>
                <td><fmt:formatDate value="${board.createdAt}" pattern="yyyy-MM-dd HH:mm"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
