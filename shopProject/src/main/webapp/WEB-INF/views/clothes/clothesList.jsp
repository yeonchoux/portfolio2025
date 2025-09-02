<%@ page contentType="text/html; charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ include file="/WEB-INF/views/common/header.jsp" %>

            <!DOCTYPE html>
            <html lang="ko">

            <head>
                <meta charset="UTF-8">
                <title>Clothes</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
                <style>
                    body {
                        background-color: #f8f9fa;
                        font-family: 'Segoe UI', sans-serif;
                    }
					
					.card-body {
					    font-size: 0.85rem;
					}
					.card-text {
					    margin-bottom: 0.3rem;
					}

                    .card-img-top {
                        height: 250px;
                        object-fit: contain;
                        background-color: #f5f5f5;
                    }
                </style>
            </head>

            <body>

                <div class="container">
                    <h3 class="mt-5 mb-5 fw-bold text-center"> 의류 </h3>
                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
						
                        <c:forEach var="clothes" items="${clothesList}">
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="${clothes.imagePath}" class="card-img-top" alt="${clothes.name}">
                                    <div class="card-body text-center">
                                        <p class="card-text">${clothes.name}</p>
                                        <p class="text-muted small">${clothes.price}원</p>
                                        <div class="d-flex justify-content-center">
                                            <a href="/clothes/${clothes.id}"
                                                class="btn btn-sm btn-outline-dark">View</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </body>

            </html>