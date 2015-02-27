<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar">
			<i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">TorchBox</a></li>
			<li><a href="#">일정관리</a></li>
			<li><a href="#">전체일정</a></li>
		</ol>
	</div>
</div>

<div class="row full-calendar">
	<div class="col-sm-3">
		<div id="add-new-event">
			<h4 class="page-header">새로운 일정</h4>
			<div class="form-group">
				<label>제목</label>
				<input type="text" id="new-event-title" class="form-control">
			</div>
			<div class="form-group">
				<label>내용</label>
				<textarea class="form-control" id="new-event-desc" rows="3"></textarea>
			</div>
			<a href="#" id="new-event-add" class="btn btn-primary pull-right">추가</a>
			<div class="clearfix"></div>
		</div>
		<div id="external-events">
			<h4 class="page-header" id="events-templates-header">일정을 드래그하여 옮기세요</h4>
			<div class="external-event">수술</div>
			<div class="external-event">회의</div>
			<div class="external-event">강연</div>
			<div class="external-event">회식</div>
			
			<div class="checkbox">
				<label>
					<input type="checkbox" id="drop-remove"> 일정등록 후 제거
					<i class="fa fa-square-o small"></i>
				</label>
			</div>
		</div>
	</div>
	<div class="col-sm-9">
		<div id="calendar"></div>
	</div>
</div>
<script>
$(document).ready(function() {
	// Set Block Height
	SetMinBlockHeight($('#calendar'));
	// Create Calendar
	DrawFullCalendar();
});
</script>
