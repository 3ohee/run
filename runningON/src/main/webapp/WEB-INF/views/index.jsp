<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RunningON</title>
<link href="/resources/CSH/css/index.css" rel="stylesheet">
<script type="text/javascript">
 	function dynamic_go(f) {
		f.action = "/emp_dynamic_search";
		f.submit();	
	} 
	
</script>
</head>
<body bgcolor = '#EBE5DC'>
	<header class="navbar">
		<div class="navbar_logo">
			<i class=""></i> <a href="/main"> RUNNINGON </a>
		</div>

		<!-- 검색창 -->
		<form method="post">
		<input type="text" placeholder="검색" autofocus>
		<input type="button" value="동적검색" onclick="dynamic_go(this.form)">
		</form>
		
		<ul class="navbar_link">
		<c:choose>
			<c:when test="${loginchk == 'ok' }">
				<li><a href="/logout_logout">로그아웃</a></li>
				<li><a href="/my_page">MY</a></li>
			
			</c:when>
			<c:otherwise>
				<li><a href="/loginForm">로그인</a></li>
			
			</c:otherwise>
		</c:choose>
		</ul>
	</header>
	
	
	<main>
		<nav class="navbar_bottom">
			<div class="navbar_blank">
				<!-- 메뉴를 중간으로 두기위해.. -->
			</div>

			<ul class="navbar_search">
				<li><a href="#">HOT</a></li>
				<li><a href="#">자유</a></li>
				<li><a href="#">코스추천</a></li>
				<li><a href="#">러닝모임</a></li>
				<li><a href="#">마라톤 대회</a></li>
				<li><a href="#">플리추천</a></li>
				<li><a href="#">러닝용품</a></li>
			</ul>
			<div class="navbar_blank">
				<!-- 메뉴를 중간으로 두기위해.. -->
			</div>
		</nav>
		<div id="content">
			<aside class="daily_weather">
			<jsp:include page="/WEB-INF/views/weather.jsp" />
			</aside>
			<section class="board">
				<h2>게시판</h2>
				<button>최신순</button>
				<button>인기순</button>
				<hr>
				<table>
					<thead>
					 <tr>
						<th class = "show_col"> 번호 </th>
						<th class = "category"> 카테고리 </th>
						<th class = "subject"> 제목 </th>
						<th>작성자</th>						
						<th>조회수</th>						
						<th>좋아요</th>						
						<th>작성일</th>						
					 </tr>
					</thead>
					<tbody>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<!-- 작성자 DB?  -->
							<td> </td>
							<!-- 조회수  -->
							<td> </td>
							<!-- 좋아요  -->
							<td> </td>
							<!-- 작성일  -->
							<td> </td>
						</tr>
					
					</tbody>
					
				</table>
			</section>
		</div>
	</main>
	
<footer>
    <div class="footer_container">
        <div class="footer_section">
            <h3>문의사항</h3>
            <p>runningon@gmail.com</p>
        </div>
        <div class="footer_section">
            <h3>Follow Us</h3>
            <p>@runningON</p>
        </div>
        <div class="footer_section">
            <h3>RunningON</h3>
            <p>© 2024 RunningON, All Rights Reserved</p>
        </div>
    </div>
</footer>

</body>
</html>