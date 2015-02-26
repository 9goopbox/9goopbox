<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">TorchBox</a></li>
			<li><a href="#">전자차트</a></li>
			<li><a href="#">차트작성</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-pencil"></i> <span>차트 작성</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="row">
				<dl class="dl-horizontal">
					<dt>환자이름</dt>
					<dd>${patientvo.name}</dd>
					<dt>나이</dt>
					<dd>${patientvo.age}</dd>
					<dt>성별</dt>
					<dd>${patientvo.sex}</dd>
					<dt>전화번호</dt>
					<dd>${patientvo.phone}</dd>
					<dt>신장</dt>
					<dd>${patientvo.height}</dd>
					<dt>피보험자</dt>
					<dd>${patientvo.insured}</dd>
					<dt>가족력</dt>
					<dd>${patientvo.familydis}</dd>
					<dt>주치의 ID</dt>
					<dd>${patientvo.doctor_id}</dd>
					<dt>진단의 ID</dt>
					<dd>${session.doctor_id}</dd>
				</dl>
			</div>
			<h3>진료기록</h3>
			<div class="form-group">
				<form method="post" action="../charts_submit.box" onsubmit="LoadAjaxContentByForm(this,'POST'); return false;">
				<div class="col-sm-12">
					<input type="hidden" name="id" />
					<textarea class="form-control" rows="5" id="wysiwig_full" name="cont"></textarea>
				</div>
				</form>
			</div>
			<div style="float: right;">
				<button type="button" class="btn btn-primary">등록</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		// Create Wysiwig editor for textare
		TinyMCEStart('#wysiwig_full', 'extreme');

		// Add drag-n-drop feature to boxes
		WinMove();
	});
</script>