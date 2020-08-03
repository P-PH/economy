<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
Cookie[] ck = request.getCookies();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
if(ck.length >= 2) {
	out.println(ck[0].getValue()+"님 환영합니다.<br>");
	out.println("<a href='logout.jsp'>로그아웃</a>");
} else {
%>
<form action="login.jsp?page=1" method="post">
<table>
<tr><td>아이디</td><td> <input type="text" name="id"> </td></tr>
<tr><td>패스워드</td><td> <input type="password" name="pass"> </td></tr>
<tr><td><input type="submit" value="로그인"></td>
<td><input type="reset" value="다시쓰기"></td></tr>
</table>
<br>
<a href="join.jsp">회원가입하기</a>
</form>
<%
}
%>


</body>
</html>