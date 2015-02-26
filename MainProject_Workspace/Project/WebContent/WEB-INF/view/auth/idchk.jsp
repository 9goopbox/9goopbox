<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${cnt>0 }">
		<p style="color: red">이미 사용 중인 아이디 입니다.</p>
	</c:when>
	<c:otherwise>
		<p style="color: blue">사용 가능한 아이디 입니다.</p>
	</c:otherwise>
</c:choose>
