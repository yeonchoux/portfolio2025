<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .detail-container {
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
        }

        .detail-container h3 {
            font-size: 1.5rem;
            margin-top: 20px;
        }

        .detail-container p {
            font-size: 0.9rem;
            color: #555;
        }

        .detail-container img {
            max-height: 400px;
            object-fit: contain;
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
    <div class="container py-5">
        <div class="detail-container">
            <!-- 상품 이미지 -->
            <img src="${clothes.imagePath}" alt="${clothes.name}" class="img-fluid rounded shadow mb-2">

            <!-- 상품명 -->
            <h3>${clothes.name}</h3>

            <!-- 가격 -->
            <p>${clothes.price}원</p>

            <!-- 버튼 -->
            <a href="/clothes/list" class="btn btn-dark mt-2">목록으로</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>