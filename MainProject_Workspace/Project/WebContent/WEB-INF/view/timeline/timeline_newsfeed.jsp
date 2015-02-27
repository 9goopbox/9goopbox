<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">TorchBox</a></li>
			<li><a href="#">타임라인</a></li>
			<li><a href="#">뉴스피드</a></li>
		</ol>
	</div>
</div>

<!-- 					<div style="float: left;"> -->
<!-- 						<input class="form-control col-lg-1" type="text" -->
<%-- 							name="searchValue" value="${searchValue}"> --%>
<!-- 					</div> -->
					
<div class="row">
	<div class="col-xs-12">
	<div class="row">
	<form onsubmit="post(event);">
		<fieldset>
		<form method="post" action="../management_pay.box"
					onsubmit="LoadAjaxContentByForm(this,'GET') ; return false;">
			<div class="col-xs-12"><legend>홈 타임라인</legend></div>
			<div class="col-xs-12">
			<textarea class="form-control" value="${tvolist.cont}" id="postContent" onkeydown="onTestChange(event);""></textarea></div>
			<div class="col-xs-12"><input type="submit" value="전송" class="btn btn-block"></div>
			</form>
		</fieldset>
	</form>
	</div>
	</div>
</div>
<div id="timeline" class="row">
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////// -->
<c:forEach items="${manageDisplayList}" var="mdl">
	<div class="col-xs-12 page-feed"
		data-date=${mdl.updated}>
		<div class="box">
			<div class="avatar">
				<img src=${mdl.PROFILE_IMG} alt="profile_pic" />
			</div>
			<div class="page-feed-content">

				<span><b>${mdl.name}</b> <small>${mdl.id}</small> <small class="time">12분
						전</small></span>
				<p>${mdl.cont}</p>
				<div class="likebox">
					<ul class="nav navbar-nav">
						<li><a href="#"><i class="fa fa-reply"></i></a></li>
						<li><a href="#"><i class="fa fa-share-alt"></i><span
								class="count">30</span></a></li>
						<li><a href="#"><i class="fa fa-tags"></i></a></li>
						<!-- 						<li><a href="#"><i class="fa fa-download"></i><span class="count">30</span></a></li> -->
						<li><a href="#"><i class="fa fa-external-link"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
	<!-- ////////////////////////////////////////////////////////////////////////////////////////////////// -->
	
</div>

<script src="../js/timeline_common.js"></script>
<script type="text/javascript">
	function MakeSelect2() {
		$('#kind_select2').select2();
	}
	$(document).ready(function() {
		// ajax-link 적용
		$("a.ajax-link").bind("click", function(e) {
			e.preventDefault();
			LoadAjaxContent($(e.target).attr("href"));
		});
		$("div.paging a").bind("click", function(e) {
			e.preventDefault();
			LoadAjaxContent($(e.target).attr("href"));
		});
		LoadSelect2Script(MakeSelect2);
		WinMove();
	});
</script>
