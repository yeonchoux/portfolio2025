<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>장바구니</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="container py-5">
    <h3 class="fw-bold mb-4 text-center">장바구니</h3>

    <c:if test="${empty cartList}">
        <p class="text-center text-muted">장바구니가 비어있습니다.</p>
    </c:if>

    <c:if test="${not empty cartList}">
        <table class="table table-hover align-middle">
            <thead class="table-light">
                <tr>
                    <th>상품명</th>
                    <th>가격</th>
                    <th>수량</th>
                    <th>합계</th>
                    <th>삭제</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cart" items="${cartList}">
                    <tr>
                        <td>${cart.productId}</td>
                        <td>${cart.price}원</td>
                        <td>${cart.quantity}</td>
                        <td>${cart.price * cart.quantity}원</td>
                        <td>
                            
                            <form action="/cart/delete" method="post" style="display:inline;">
                                <input type="hidden" name="cartId" value="${cart.cartId}">
                                <button type="submit" class="btn btn-sm btn-outline-danger">삭제</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <div class="text-center mt-4">
        <a href="/clothes/list" class="btn btn-dark">계속 쇼핑하기</a>
    </div>
</div>
</body>
</html>
