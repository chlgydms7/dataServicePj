<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 에러</title>
</head>
<body>
<%
	 out.println("<script> alert('잘못된 회원정보 입니다.'); location.href='/login'</script>");
%>
</body>
</html>