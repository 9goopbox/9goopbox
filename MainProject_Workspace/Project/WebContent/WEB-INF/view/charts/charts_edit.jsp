<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">9급박스</a></li>
			<li><a href="#">전자차트</a></li>
			<li><a href="#">차트수정</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box" style="overflow:hidden;">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-pencil"></i><span>차트 작성</span>
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
					<dd>${pvo.name}</dd>
					<dt>나이</dt>
					<dd>${pvo.age}</dd>
					<dt>성별</dt>
					<dd>${pvo.sex}</dd>
					<dt>전화번호</dt>
					<dd>${pvo.phone}</dd>
					<dt>신장</dt>
					<dd>${pvo.height}</dd>
					<dt>피보험자</dt>
					<dd>${pvo.insured}</dd>
					<dt>가족력</dt>
					<dd>${pvo.familydis}</dd>
					<dt>주치의 ID</dt>
					<dd>${pvo.doctor_id}</dd>
					<dt>진단의 ID</dt>
					<dd>${evo.id}</dd>
				</dl>
			</div>
			<h3>진료기록</h3>
			<div class="form-group">
				<form method="post" action="../charts_edit_submit.box" onsubmit="tinymce.triggerSave(); LoadAjaxContentByForm(this,'POST'); return false;">
				<div class="col-sm-12">
					<input type="hidden" name="id" value="${cvo.id}" />
					<input class="form-control" type="text" name="sub" placeholder="제목을 입력하세요" value="${cvo.sub }" />
					<input class="form-control" type="text" name="disease" placeholder="진단 요약을 입력하세요" value="${cvo.disease }"/>
					<input class="form-control" type="number" name="cost" placeholder="진료비를 입력하세요" value="${cvo.cost }"/>
					<textarea class="form-control" rows="5" id="wysiwig_full" name="cont">${cvo.cont}</textarea>
					<input type="hidden" name="attach_id"/>
				</div>
				<div style="float: right;">
					<button type="submit" class="btn btn-primary">수정</button>
				</div>
				</form>
			</div>
			
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		// Create Wysiwig editor for textare
		setTimeout(TinyMCEStart('#wysiwig_full', 'extreme'), 1000);

		// Add drag-n-drop feature to boxes
		WinMove();
	});
</script>