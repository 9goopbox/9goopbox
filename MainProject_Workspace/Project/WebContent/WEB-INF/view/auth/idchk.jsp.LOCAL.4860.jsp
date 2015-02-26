<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${cnt >0}">
		<p style="color:red">사용중</p>
	</c:when>
	<c:otherwise>
		<p style="color:white">사용가능</p>
	</c:otherwise>
</c:choose>