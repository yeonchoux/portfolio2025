<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>큐앤에이 상세 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">

    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <div class="d-flex justify-content-between align-items-center">
                <h4 class="card-title mb-0">${board.name}님의 글</h4>

                <form action="/board/delete/${board.id}" method="post" onsubmit="return confirm('삭제하시겠습니까?');">
                    <button type="submit" class="btn btn-sm btn-danger">삭제</button>
                </form>
            </div>
            <hr>
            <p class="card-text">${board.content}</p>
            <p class="text-muted small">
                작성일 :
                <fmt:formatDate value="${board.createdAt}" pattern="yyyy-MM-dd HH:mm"/>
            </p>
        </div>
    </div>


    <h5 class="fw-bold mb-3">댓글</h5>
    <c:if test="${empty commentList}">
        <p class="text-muted">아직 댓글이 없습니다.</p>
    </c:if>
    <c:forEach var="comment" items="${commentList}">
        <div class="border rounded p-2 mb-2">
            <p class="mb-1"><strong>${comment.name}</strong></p>
            <p class="mb-0">${comment.content}</p>
        </div>
    </c:forEach>

 
    <div class="mt-4">
        <form action="/comment/create" method="post">
            <input type="hidden" name="boardId" value="${board.id}">
            <div class="mb-2">
                <input type="text" name="name" class="form-control" placeholder="작성자 이름" required>
            </div>
            <div class="mb-2">
                <textarea name="content" class="form-control" rows="3" placeholder="댓글을 입력하세요" required></textarea>
            </div>
            <button type="submit" class="btn btn-dark btn-sm">댓글 등록</button>
        </form>
    </div>

 
    <div class="mt-4">
        <a href="/board/list" class="btn btn-outline-secondary btn-sm">목록으로</a>
    </div>

</div>
</body>
</html>
