<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시글 작성</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', sans-serif;
        }
        .form-container {
            max-width: 600px;
            margin: 60px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.06);
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h3 class="fw-bold text-center mb-4">새 글 작성</h3>

        <form action="/board/create" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">작성자</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="작성자 이름을 입력하세요" required>
            </div>

            <div class="mb-3">
                <label for="content" class="form-label">내용</label>
                <textarea class="form-control" id="content" name="content" rows="5" placeholder="내용을 입력하세요" required></textarea>
            </div>

            <div class="d-flex justify-content-between">
                <a href="/board/list" class="btn btn-outline-secondary">목록으로</a>
                <button type="submit" class="btn btn-dark">등록</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
