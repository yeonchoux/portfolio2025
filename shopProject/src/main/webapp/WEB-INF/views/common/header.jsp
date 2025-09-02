<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<header class="p-3 bg-dark text-white" style="font-size: 0.85rem;">
  <div class="container">
    <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      <a href="/" class="d-flex align-items-center mb-1 mb-lg-0 text-white text-decoration-none">
        <svg class="bi me-2" width="40" height="16" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
      </a>

	  <ul class="nav col-12 col-lg-auto me-auto mb-2 justify-content-center mb-md-0 small">
		<li><a href="/member/main" class="nav-link px-2 text-white">Main</a></li>
		<li><a href="/member/signup" class="nav-link px-2 text-white">Sign-up</a></li>
		<li><a href="/member/mypage" class="nav-link px-2 text-white">My Page</a></li>
        <li><a href="/clothes/list" class="nav-link px-2 text-white">Shop</a></li>
        <li><a href="/board/list" class="nav-link px-2 text-white">Q&A</a></li>
      </ul>
    </div>
  </div>
</header>
