<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

{
 	"articles" :
  	<c:forEach items="${tvolist}" var="tvo" varStatus="tvoidx">
  	[ {
  		"user": {
  			"id":"${tvo.id }",
  			"name" : "${tvo.name }",
  			"name" : "${tvo.PROFILE_IMG }"
  		},
  		"article": {
  			"id"   :"${tvo.art_id }"
  			"cont" : "${tvo.cont }",
 			"date" : "${tvo.updated }",
  			"kind" : "${tvo.kind }",
  			"ref_id" : "${tvo.ref_id }",
 			"head_id" : "${tvo.head_id }",
  			"attach_id" : "${tvo.attach_id }",
  		}
  	  } <c:if test="${tvoidx.index < tvolist.size()-1 }">,</c:if>
	</c:forEach>
   ],
   "count" : ${tvolist.size()} 
  }
