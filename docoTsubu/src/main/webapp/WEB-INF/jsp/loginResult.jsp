<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶログイン</h1>
<c:choose>
	<c:when test="${not empty loginUser}">
		<p>ログインに成功しました</p>
		<p>ようこそ<%= loginUser.getName() %>さん</p>
		<a href="/docoTsubu/Main">つぶやき投稿・閲覧へ</a>
	</c:when>	
	<c:otherwise>
		<p>ログインに失敗しました</p>
		<a href="/docoTsubu/">トップへ</a>
	</c:otherwise>
</c:choose>
</body>
</html>