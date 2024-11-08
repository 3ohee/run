<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RunningON</title>
<style type="text/css">

body {
	bgcolor = '#D0C2AE';
}

ul {
	list-style-type: none;
	overflow: hidden;
	padding: 0px;
	margin: 0px
}

/* 한줄 만들기 */
li {
	float: left;
}
/* 	li{display: inline;}
 */
a {
	text-decoration: none; /* -- 밑줄 없어짐 */
	padding: 16px 50px;
	display: block;
}

a:hover {
	font-size: 16px;
	background-color: black;
	color: white;
}

.navbar {
	display: flex;
	justify-content: space-between;
	background-color: orange;
}

.navbar a {
	color: white;
}

.navbar input {
	display: flex;
	width: 500px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-radius: 10px;
	outline: none;
	background-color: rgb(240, 240, 240);
	margin-top: 9px;
}

.navbar_bottom {
	display: flex;
	justify-content: space-between;
	background-color: #FFFBF5;
}

/* 메인 */
#content {
	margin: 0px auto;
}

.daily_weather {
	width: 200px;
	height: 400px;
	background-color: white;
	/* 바깥 여백 */
	margin: 10px 5px 10px 5px;
	/* 안쪽 여백 */
	padding : 20px;
	
	float: left;
}

.board {
	width: 70%;
	height: 400px;
	background-color: white;
	margin: 10px 5px 10px 5px;
	/* 상 우 하 좌 */
	padding : 20px 40px 20px 40px;
	float: left;
}

table {
	width: 100%;
    max-width: 100%;
}

th {
	height: 43px;
    padding: 8px 14px;
    border: none;
	width: 50px;
}


.subject {
	/* text-align: left; */
	/* 넘치는 텍스트를 자름 */
    text-overflow: clip;
    width: 250px;
}

button {


}


</style>

</head>


<body bgcolor = '#EBE5DC'>
	<header class="navbar">
		<div class="navbar_logo">
			<i class=""></i> <a href="/main"> RUNNINGON </a>
		</div>

		<!-- 검색창 -->
		<input type="text" placeholder="검색" autofocus>

		<ul class="navbar_link">
			<li><a href="/login1">로그인</a></li>
			<li><a href="/my_page">MY</a></li>
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
			<section class="daily_weather">
				<h2><a href="/weather">날씨</a></h2>
				<p>날씨 정보..</p>
				<p>날씨 정보..</p>
				<p>날씨 정보..</p>
				<p>날씨 정보..</p>
			</section>
			<section class="board">
				게시판
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
	
</body>
</html>