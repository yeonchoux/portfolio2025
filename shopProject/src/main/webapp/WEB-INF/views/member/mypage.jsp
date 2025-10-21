<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>마이 페이지</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .mypage-container {
            max-width: 480px;
            margin: 80px auto;
            padding: 40px 30px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.03);
        }
        .mypage-title {
            font-size: 24px;
            font-weight: 600;
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }
        .info-item {
            font-size: 15px;
            margin-bottom: 20px;
        }
        .label {
            display: block;
            font-weight: 500;
            color: #555;
            margin-bottom: 5px;
        }
        .value {
            color: #111;
        }
        .btn-dark {
            background-color: #111;
            border: none;
            border-radius: 8px;
        }
        .btn-dark:hover {
            background-color: #333;
        }
    </style>
</head>
<body>

<div class="mypage-container">
    <div class="mypage-title">마이페이지</div>

    <div class="info-item">
        <span class="label">이메일</span>
        <span class="value">${member.email}</span>
    </div>

    <div class="info-item">
        <span class="label">생년월일</span>
        <span class="value">${member.birth}</span>
    </div>

    <div class="info-item">
        <span class="label">주소</span>
        <span class="value">${member.address}</span>
    </div>

    <div class="d-grid gap-2 col-8 mx-auto">
        <a href="/member/logout" class="btn btn-dark">로그아웃</a>
		<a href="/clothes/list" class="btn btn-outline-secondary">상품보기</a>
    </div>
</div>

</body>
</html>
