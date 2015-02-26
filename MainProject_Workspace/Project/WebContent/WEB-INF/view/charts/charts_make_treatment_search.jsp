<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar">
			<i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">TorchBox</a></li>
			<li><a href="#">전자차트</a></li>
			<li><a href="#">차트작성</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-10">
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
				<form method="post" action="../charts_make_treatment_search.box" onsubmit="LoadAjaxContentByForm(this,'GET') ">
					<div class="col-xs-12 col-sm-12">
					차트를 만들 진료를 선택하세요.
					</div>
					<div class="col-xs-12 col-sm-2">
						<select id="kind_select2" name="searchType">
							<option></option>
							<option value="1" ${searchType==1?'selected="selected"':''}>환자이름</option>
							<option value="2" ${searchType==2?'selected="selected"':''}>환자번호</option>
							<option value="3" ${searchType==3?'selected="selected"':''}>진료번호</option>
						</select>
					</div>
					<div class="col-xs-12 col-sm-3">
						<div class="input-group">
							<input class="form-control input-lg" type="text" name="searchValue" value="${searchValue}">
							<div class="input-group-btn">
								<input class="btn btn-primary" type="submit" value="검색">
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="box-content no-padding">
				<table
					class="table table-bordered table-striped table-hover table-heading table-datatable"
					id="datatable-1">
					<thead>
						<tr>
							<th>진료 ID</th>
							<th>환자 ID</th>
							<th>환자이름</th>
							<th>성별</th>
							<th>차트 조회</th>
							<th>진료 선택</th>
						</tr>
					</thead>
					<tbody>
						<!-- Start: list_row -->
						<c:forEach items="${chartTreatmentList}" var="ctl">
							<tr>
								<td>${ctl.treatment_id}</td>
								<td>${ctl.patient_id }</td>
								<td>${ctl.patient_name }</td>
								<td>${ctl.patient_sex }</td>
								<td><a class="ajax-link"
									href="../charts_inquiry.box?searchType=5&searchValue=${ctl.treatment_id}">조회</a></td>
								<td><a class="ajax-link"
									href="../charts_make.box?id=${ctl.treatment_id}">선택</a></td>
							</tr>
						</c:forEach>

						<!-- End: list_row -->
					</tbody>
				</table>
				<jsp:include page="/WEB-INF/view/util/paging.jsp"></jsp:include>
			</div>
		</div>
	</div>
</div>

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