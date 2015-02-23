<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<meta charset="utf-8">
<title>토치박스</title>
<meta name="description" content="description">
<meta name="author" content="DevOOPS">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="res/plugins/bootstrap/bootstrap.css" rel="stylesheet">
<link href="res/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Righteous'
	rel='stylesheet' type='text/css'>
<link href="res/plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="res/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
<link href="res/plugins/xcharts/xcharts.min.css" rel="stylesheet">
<link href="res/plugins/select2/select2.css" rel="stylesheet">
<link href="res/plugins/justified-gallery/justifiedGallery.css"
	rel="stylesheet">
<link href="res/css/style_v1.css" rel="stylesheet">
<link href="res/plugins/chartist/chartist.min.css" rel="stylesheet">
</head>


<body>
	<div id="canvas">
		<tiles:insertAttribute name="header" />
		<div class="canvas">
			<tiles:insertAttribute name="menu" />
			<tiles:insertAttribute name="body" />
		</div>
	</div>
</body>
</html>