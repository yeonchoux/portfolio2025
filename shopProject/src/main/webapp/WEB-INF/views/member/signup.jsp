<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .signup-container {
            max-width: 420px;
            margin: 80px auto;
            padding: 40px 30px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.03);
        }
        .signup-title {
            font-weight: 600;
            font-size: 24px;
            margin-bottom: 30px;
            text-align: center;
            color: #333;
        }
        .form-control {
            border-radius: 8px;
            font-size: 15px;
        }
        .btn-primary {
            background-color: #111;
            border: none;
            border-radius: 8px;
            font-weight: 500;
            padding: 10px;
        }
        .btn-primary:hover {
            background-color: #333;
        }
    </style>
</head>
<body>

    <div class="signup-container">
        <div class="signup-title">회원가입</div>

        <form action="/member/signup" method="post">

            <div class="mb-3">
                <label for="email" class="form-label">이메일</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="example@email.com" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">비밀번호</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요." required>
            </div>

            <div class="mb-3">
                <label for="birth" class="form-label">생년월일</label>
                <input type="date" class="form-control" id="birth" name="birth" required>
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">주소</label>
                <input type="text" class="form-control" id="address" name="address" placeholder="주소를 입력하세요." required>
            </div>

            <div class="d-grid mt-4">
                <button type="submit" class="btn btn-primary">가입하기</button>
            </div>

        </form>
    </div>

    <!-- Bootstrap JS (선택, 사용 안 해도 됨) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>