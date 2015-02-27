<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="#">Dashboard</a></li>
			<li><a href="#">인사관리</a></li>
			<li><a href="#">퇴직관리</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i> <span>직원관리</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content no-padding">
			<table
				class="table table-bordered table-striped table-hover table-heading table-datatable"
				id="datatable-1">
				<thead>
					<tr>
						<th>아이디</th>
						<th>직원 이름</th>
						<th>번호</th>
						<th>부서</th>
						<th>직급</th>
						<th>입사일</th>
						<th>퇴사일</th>
						<th>주소</th>
						<th>이메일</th>
<!-- 						<th>다운로드</th> -->

					</tr>
				</thead>
						<tbody>
					<!-- Start: list_row -->
						<tr>
							<td>${manageRetireDetailList.id}</td>
							<td>${manageRetireDetailList.name}</td>
							<td>${manageRetireDetailList.tel }</td>
							<td>${manageRetireDetailList.dept_name }</td>
							<td>${manageRetireDetailList.position }</td>
							<td>${manageRetireDetailList.come}</td>
							<td>${manageRetireDetailList.bye}</td>
							<td>${manageRetireDetailList.address }</td>
							<td>${manageRetireDetailList.email }</td>
<!-- 							<td><input type="button" class="col-lg-5" value="문서내려받기"></td> -->
						</tr>
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