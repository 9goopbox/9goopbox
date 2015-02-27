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
			<li><a href="#">직원관리</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i> <span>직원 조회</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="form-group">
				<form method="post" action="../management_staff.box"
					onsubmit="LoadAjaxContentByForm(this,'GET') ; return false;">
					<select style="float: left;" id="kind_select2" name="searchType">
						<option></option>
						<option value="1" ${searchType==1?'selected="selected"':''}>=이
							름=</option>
						<option value="2" ${searchType==2?'selected="selected"':''}>=직
							급=</option>
						<option value="3" ${searchType==3?'selected="selected"':''}>=부
							서=</option>
					</select>

					<div style="float: left;">
						<input class="form-control col-lg-1" type="text"
							name="searchValue" value="${searchValue}">
					</div>
					<div style="float: left;">
						<!-- 					<button type="submit" class="btn btn-primary btn-xs">조회</button> -->
						<input class="btn btn-primary" type="submit" value="조회">
					</div>
				</form>
			</div>
			<br />
		</div>
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
							<th>직원이름</th>
							<th>전화번호</th>
							<th>부서</th>
							<th>직급</th>
							<th>상세보기</th>
							<!-- 							<th>다운로드</th> -->
						</tr>
					</thead>

					<tbody>
						<!-- Start: list_row -->
						<c:forEach items="${manageDisplayList}" var="mdl">
							<tr>
								<td>${mdl.name}</td>
								<td>${mdl.tel }</td>
								<td>${mdl.dept_name }</td>
								<td>${mdl.position }</td>
								<td><a class="ajax-link"
									href="../management_staff_detail.box?id=${mdl.id}">상세보기</a></td>
								<!-- 								<th><a href="#">파일다운로드</a></th> -->
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
<!-- <script type="text/javascript"> -->
<!-- // 	// Run Datables plugin and create 3 variants of settings -->
<!-- // 	// function AllTables(){ -->
<!-- // 	// 	TestTable1(); -->
<!-- // 	// 	TestTable2(); -->
<!-- // 	// 	TestTable3(); -->
<!-- // 	// 	LoadSelect2Script(MakeSelect2); -->
<!-- // 	// } -->
<!-- // 	function MakeSelect2() { -->
<!-- // 		// 	$('select').select2(); -->
<!-- // 		// 	$('.dataTables_filter').each(function(){ -->
<!-- // 		// 		$(this).find('label input[type=text]').attr('placeholder', 'Search'); -->
<!-- // 		// 	}); -->
<!-- // 	} -->
<!-- // 	$(document).ready(function() { -->
<!-- // 		// Load Datatables and run plugin on tables -->
<!-- // 		// 	LoadDataTablesScripts(AllTables); -->
<!-- // 		// Add Drag-n-Drop feature -->
<!-- // 		WinMove(); -->
<!-- // 	}); -->
<!-- </script> -->
