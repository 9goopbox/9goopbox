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
			<div class="row">
				<div class="col-md-6">
					<input type="text" class="form-control" placeholder="성별"> <br />
				</div>

				<div class="col-md-6">
					<input type="text" class="form-control" placeholder="전화번호">
					<br />
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<input type="text" class="form-control" placeholder="주소"> <br />
				</div>
				<div class="col-md-6">
					<input type="text" class="form-control" placeholder="피보험자">
					<br />
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<input type="text" class="form-control" placeholder="신장"> <br />
				</div>
				<div class="col-md-4">
					<input type="text" class="form-control" placeholder="체중"> <br />
				</div>
				<div class="col-md-4">
					<input type="text" class="form-control" placeholder="가족력">
					<br />
				</div>
			</div>
			<h3>진료기록</h3>
			<div class="form-group">
				<div class="col-sm-20">
					<textarea class="form-control" rows="5" id="wysiwig_full"></textarea>
				</div>
			</div>
			<div style="float: right;">
				<button type="button" class="btn btn-primary">등록</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	// Run timepicker
	function DemoTimePicker() {
		$('#input_time').timepicker({
			setDate : new Date()
		});
	}
	$(document).ready(function() {
		// Create Wysiwig editor for textare
		TinyMCEStart('#wysiwig_full', 'extreme');

		// Add drag-n-drop feature to boxes
		WinMove();
	});
</script>