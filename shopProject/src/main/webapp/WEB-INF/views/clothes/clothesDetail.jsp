<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!DOCTYPE html>
<html lang="ko">

<head>
 <title>상품 상세 페이지</title>
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
		
		.btn-custom-height {
   			height: 38px; 
    		display: flex;
    		align-items: center;
    		justify-content: center;
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

            <img src="${clothes.imagePath}" alt="${clothes.name}" class="img-fluid rounded shadow mb-2">

            <h3>${clothes.name}</h3>
            <p><fmt:formatNumber value="${clothes.price}" type="number" groupingUsed="true"/>원</p>

	<div class="d-flex justify-content-center gap-2 align-items-stretch">
    	<a href="/clothes/${clothes.id}" class="btn btn-sm btn-outline-dark btn-custom-height">보기</a>
    	<form action="/cart/add" method="post" class="d-inline">
        	<input type="hidden" name="productId" value="${clothes.id}">
        	<input type="hidden" name="quantity" value="1">
        	<button type="submit" class="btn btn-sm btn-outline-success btn-custom-height">장바구니</button>
    	</form>
	</div>


            <a href="/clothes/list" class="btn btn-dark mt-2">목록으로</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>