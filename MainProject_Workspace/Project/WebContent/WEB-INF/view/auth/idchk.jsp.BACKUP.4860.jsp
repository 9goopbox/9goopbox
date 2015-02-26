<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${cnt >0}">
		<p style="color:red">사용중</p>
	</c:when>
	<c:otherwise>
		<p style="color:white">사용가능</p>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${cnt>0 }">
		<p style="color: red">이미 사용 중인 아이디 입니다.</p>
	</c:when>
	<c:otherwise>
		<p style="color: blue">사용 가능한 아이디 입니다.</p>
>>>>>>> origin/master
	</c:otherwise>
</c:choose>