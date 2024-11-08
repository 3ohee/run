<%@page import="com.ict.runningON.vo.UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	
	<div id="my_info">
	
	
	</div>
	    <%
        // 세션에서 uvo 객체를 가져오기
        UsersVO user = (UsersVO) session.getAttribute("uvo");
        if (user != null) {
    %>
        <p>안녕하세요, <strong><%= user.getUser_id() %></strong>님!</p>
    <%
        } else {
    %>
        <p>로그인 정보가 없습니다. <a href="/loginForm">로그인</a> 해주세요.</p>
    <%
        }
    %>
    <div id="result">
    
    
    </div>
    
    <a href="/main">메인페이지</a>
    <a href="/kakaologout">로그아웃</a>

   <script type="text/javascript">
     $(function() {
         $("#result").empty();
         $.ajax({
             url : "/kakaoUserInfo",
             method : "post",
             dataType : "json",
             success : function(data) {
            	 const name = data.properties.nickname;
            	 const img = data.properties.profile_image;
            	 const email = data.kakao_account.email;
            	 
            	 let str  = "<li>닉네임 : "+ name +" </li>";
            	 	str  += "<li>이메일 : "+ email +" </li>";
                      str += "<li>이미지 : <img src= " + img +"> </li>";
             $('#result').append(str);
             }, 
             error : function() {
                 alert("정보를 불러오는 데 실패했습니다.");
             }
         });
      });
    </script>

</body>
</html>