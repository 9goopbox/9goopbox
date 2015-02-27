<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="user_page.html">9급박스</a></li>
			<li><a href="#">전자차트</a></li>
			<li><a class="ajax-link" href="../charts_detail.box?id=${cvo.id}">차트상세보기</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-usd"></i> <span>차트 상세 설명</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content" style="overflow: hidden;">
				<div class="row">

					<div class="row">

						<div class="col-xs-12">
							<h3 class="page-header">환자</h3>
						</div>
						<div class="col-xs-12">
							<dl class="dl-horizontal"
								style="columns: 2; -moz-columns: 2; -webkit-columns: 2;">
								<dt>이름</dt>
								<dd>${pvo.name}</dd>

								<dt>나이</dt>
								<dd>${pvo.age}</dd>

								<dt>성별</dt>
								<dd>${pvo.sex}</dd>
								<dt>담당의사 ID</dt>
								<dd>${pvo.sex}</dd>
								<dt>담당의사 이름</dt>
								<dd>${pvo.sex}</dd>
							</dl>
						</div>
						<div class="col-xs-12 text-center">
							<a href="#">담당의에게 메시지</a>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<h3 class="page-header">진료자</h3>
						</div>
						<div class="col-xs-12">
							<dl class="dl-horizontal"
								style="columns: 2; -moz-columns: 2; -webkit-columns: 2;">
								<dt>ID</dt>
								<dd>${evo.id}</dd>
								<dt>이름</dt>
								<dd>${evo.name}</dd>
								<dt>부서</dt>
								<dd>${dept_name}</dd>
								<dt>직급</dt>
								<dd>${evo.position}</dd>
								<dt>
							</dl>
						</div>
						<div class="col-xs-12 text-center">
							<a href="#">진료자에게 메시지</a>
						</div>
					</div>
				</div>
				<div class="row">

					<div class="col-xs-12">
						<h3 class="page-header">차트</h3>
					</div>
					<div class="col-xs-12">
						<dl class="dl-horizontal">
							<dt>제목</dt>
							<dd>${cvo.sub}</dd>

							<dt>병명요약</dt>
							<dd>${cvo.disease}</dd>

							<dt>비용</dt>
							<dd>${cvo.cost}</dd>
						</dl>
					</div>
					<div class="col-xs-12">
						<div class="panel panel-default">
							<div class="panel-body">${cvo.cont }</div>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-xs-12 col-md-6">
						<a href="../charts_edit.box?id=${cvo.id}"
							class="btn btn-block btn-default ajax-link">수정</a>
					</div>
					<div class="col-xs-12 col-md-6">
						<form method="post" action="../charts_remove.box"  onsubmit="LoadAjaxContentByForm(this,'POST'); return false;">
							<input type="hidden" name="id" value="${cvo.id }" /> <input type="submit"
								class="btn btn-block btn-default" value="삭제" />
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>

<script type="text/javascript">

	$(document).ready(function() {
		// ajax-link 적용
		$("a.ajax-link").bind("click", function(e) {
			e.preventDefault();
			LoadAjaxContent($(e.target).attr("href"));
		});
		WinMove();
	});
</script>