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
	out.println(ck[0].getValue()+"�� ȯ���մϴ�.<br>");
	out.println("<a href='logout.jsp'>�α׾ƿ�</a>");
} else {
%>
<form action="login.jsp?page=1" method="post">
<table>
<tr><td>���̵�</td><td> <input type="text" name="id"> </td></tr>
<tr><td>�н�����</td><td> <input type="password" name="pass"> </td></tr>
<tr><td><input type="submit" value="�α���"></td>
<td><input type="reset" value="�ٽþ���"></td></tr>
</table>
<br>
<a href="join.jsp">ȸ�������ϱ�</a>
</form>
<%
}
%>


</body>
</html>