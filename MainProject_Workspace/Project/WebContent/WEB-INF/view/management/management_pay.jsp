<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="#">인사 관리</a></li>
			<li><a href="#">급여 관리</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-usd"></i> <span>급여관리</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<!-- 			//////////////////////////////////////////////////////////////////////////////// -->
			<!-- 			<div class="form-group"> -->
			<!-- 				<form method="post" action="../management_pay.box" -->
			<!-- 					onsubmit="LoadAjaxContentByForm(this,'GET') ; return false;"> -->
			<!-- 				</form> -->
			<!-- 					<select style="float: left;" id="kind_select2" name="searchType"> -->
			<!-- 						<option></option> -->
			<%-- 						<option value="1" ${searchType==1?'selected="selected"':''}>=이 --%>
			<!-- 							름=</option> -->
			<!-- 					</select> -->

			<!-- 					<div style="float: left;"> -->
			<!-- 						<input class="form-control col-lg-1" type="text" -->
			<%-- 							name="searchValue" value="${searchValue}"> --%>
			<!-- 					</div> -->
			<!-- 					<div style="float: left;"> -->
			<!-- 											<button type="submit" class="btn btn-primary btn-xs">조회</button> -->
			<!-- 						<input class="btn btn-primary" type="submit" value="조회"> -->

			<!-- 					</div> -->
			<!-- 				</form> -->
			<!-- 			</div> -->
			<!-- 			//////////////////////////////////////////////////////////////////////////////// -->
			<div class="box-content no-padding">
				<h3>급여</h3>

				<table
					class="table table-bordered table-striped table-hover table-heading table-datatable"
					id="datatable-1">
					<thead>
						<tr>
							<th>지급일</th>
							<th>구분</th>
							<th>확정여부</th>


						</tr>
					</thead>
					<tbody>
						<c:forEach items="${managePayDisplayList}" var="mpdl">
							<tr>
								<td>${mpdl.payday}</td>
								<td>${mpdl.sort }</td>
								<td>${mpdl.fix }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<jsp:include page="/WEB-INF/view/util/paging.jsp"></jsp:include>
			</div>
			<div class="box-content no-padding">
				<div>
					<h3 class="lead">퇴직금</h3>
					<table
						class="table table-bordered table-striped table-hover table-heading table-datatable"
						id="datatable-1">

						<thead>
							<tr>
								<th>아이디</th>
								<th>성명</th>
								<th>부서</th>
								<th>직급</th>
								<th>입사일</th>
								<th>퇴사일</th>
							</tr>
						</thead>
						<tbody>
							<!-- Start: list_row -->

														<c:forEach items="${managePayDisplayList}" var="mpdl">
							<tr>
																	<td>${mpdl.id}</td>
																	<td>${mpdl.name }</td>
																	<td>${mpdl.dept_name }</td>
																	<td>${mpdl.position }</td>
																	<td>${mpdl.come}</td>
																	<td>${mpdl.bye}</td>
								
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
		console.log('${managePayDisplayList.size()}');
		console.log('total rows : ${pageInfo.totalRows}');
	});
</script>
