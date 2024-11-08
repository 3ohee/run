<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="/resources/CSH/css/login1.css" rel="stylesheet">
</head>
<body bgcolor="#FEF8F1">
	<form method="post">
	<div class="login_space">
	<header class = "header">
		<a href="/main" class="logo">
			<img alt="로고" src="/resources/images/logo_image.png" style="width: 100px">
		</a>
	</header>
		<table class="login">
				<tr>
					<td>
						<input type="text" placeholder="아이디" size="14" name="m_id" required>
					</td>
				</tr>
				<tr>
					<td><input type="password" placeholder="비밀번호" size="14" name="m_pw" required></td>
				</tr>
		
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="로그인" > </td>
				</tr>
		</table>
		
		<div class="join">
		<a href ="/login_join_form" > 회원가입 </a>
		</div>
		
		<div class="social_login">
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=b20a7efb928afbffd347e85b2a743a15&redirect_uri=http://localhost:8080/kakaologin&response_type=code">
		<img alt="카카오" src="/resources/images/kakao_login.png" style="width: 150px">
		</a>
		
		<a href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=BS0FXOKbvllPlSFUgmpO&redirect_uri=http://localhost:8080/naverlogin&state=STATE_STRING">
		<img alt="네이버" src="/resources/images/naver_login.png" style="width: 136px">
		</a>
		</div>
		
		
		</div>
	</form>


<!-- 	<div class="login_space">
		<div class="login_box">
			<div class="input_item.id" id="input_item.id">
				<input type="text" placeholder="아이디" size="14" name="m_id" required>
			</div>
		</div>
		<div class="login_box">
			<input type="password" placeholder="비밀번호" size="14" name="m_pw"
				required>
		</div>
		<div class="login_button">
			<input type="submit" value="로그인">
		</div>
	</div> -->


</body>
</html>