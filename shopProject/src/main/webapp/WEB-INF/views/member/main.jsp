<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

	 <style>
		
	        body {
	            margin: 0;
	            padding: 0;
	            height: 100vh;
	            overflow: hidden;
	            position: relative;
				display: flex;
				justify-content: center;
				align-items: center;
	        }
			
			header {
				position: fixed;
				top:0;
				width:100%;
				z-index: 10;
			}

	        .bg-slide {
	            position: fixed;
	            top: 0; left: 0;
	            width: 100%;
	            height: 100%;
	            z-index: -1;
	            background-size: contain;
				background-repeat: no-repeat;
	            background-position: center;
	            transition: opacity 1.2s ease-in-out;
	        }


	        .btn-dark {
	            background-color: #111;
	            border: none;
	            border-radius: 8px;
	            padding: 10px 24px;
	            font-weight: 500;
	        }

	        .btn-dark:hover {
	            background-color: #333;
	        }

	        @keyframes fadeIn {
	            from { opacity: 0; transform: translateY(20px); }
	            to   { opacity: 1; transform: translateY(0); }
	        }
	    </style>
	</head>
	<body>

	    <!-- 슬라이드용 배경 div -->
	    <div id="bg1" class="bg-slide" style="background-image: url('/images/slide_1.jpg'); opacity: 1;"></div>
	    <div id="bg2" class="bg-slide" style="background-image: url('/images/slide_2.jpg'); opacity: 0;"></div>
	    <div id="bg3" class="bg-slide" style="background-image: url('/images/slide_3.jpg'); opacity: 0;"></div>
		<div id="bg4" class="bg-slide" style="background-image: url('/images/slide_4.jpg'); opacity: 0;"></div>

	 
	    <script>
	        const slides = [
	            document.getElementById("bg1"),
	            document.getElementById("bg2"),
	            document.getElementById("bg3"),
				document.getElementById("bg4")
	        ];

	        let current = 0;
	        setInterval(() => {
	            const prev = current;
	            current = (current + 1) % slides.length;

	            slides[prev].style.opacity = 0;
	            slides[current].style.opacity = 1;
	        }, 4000); 
	    </script>
	</body>
	</html>
