<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

{
 	"articles" :
  	[ {
  		"user": {
  			"id":"article.writer_id",
  			"name" : "emplyoee.name (조인으로 찾은 직원 이름값)",
  		},
  		"article": {
  			"id"   :"article.id"
  			"cont" : "article.cont",
 			"date" : "article.updated",
  			"kind" : "article.kind",
  			"ref_id" : "article.ref_id",
 			"head_id" : "article.head_id",
  			"attach_id" : "article.attach_id"
  		},
  		"tag" : ["tag1", "tag2", "tag3"]
  	  }, (이렇게 생긴 객체가 여러개)
   ],
   "count" : 보내준 글 갯수 
  }
