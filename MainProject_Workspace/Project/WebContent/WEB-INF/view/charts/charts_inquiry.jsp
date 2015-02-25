<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="#">TorchBox</a></li>
			<li><a href="#">전자차트</a></li>
			<li><a href="#">차트조회</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-binoculars"></i> <span>차트조회</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>

			<!-- <input type="text" class="form-control" placeholder="First name" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip for name"> -->
			<div class="img-responsive">
				<div
					class="select2-container populate placeholder select2-dropdown-open select2-container-active"
					id="s2id_s2_country">
					<div style="float: left;">
						<div class="row form-group">
							<div class="col-sm-12">
								<select id="el2">		
									<option>전체</option>							
									<option>환자이름</option>
									<option>MeeGo</option>
								</select>
							</div>
						</div>

						<abbr class="select2-search-choice-close"></abbr> <span
							class="select2-arrow" role="presentation"> <b
							role="presentation"></b>
						</span> </a> <label for="s2id_autogen4" class="select2-offscreen"></label> <input
							class="select2-focusser select2-offscreen" type="text"
							aria-haspopup="true" role="button"
							aria-labelledby="select2-chosen-4" id="s2id_autogen4" disabled="">
					</div>
					<div style="float: left;">
						<input class="form-control input-lg col-lg-1" type="text">
					</div>
					<div style="float: left;">
						<input class="btn btn-primary" type="button" value="조회">
					</div>
				</div>
			</div>

			<div class="box-content no-padding">
				<table
					class="table table-bordered table-striped table-hover table-heading table-datatable"
					id="datatable-1">
					<thead>
						<tr>
							<th>환자이름</th>
							<th>나이</th>
							<th>병명</th>
							<th>담당의</th>
							<th>담당부서</th>
							<th>성별</th>
							<th>가족력</th>
							<th>상세보기</th>
						</tr>
					</thead>
					<tbody>
						<!-- Start: list_row -->
						<c:forEach items="${chartDisplayList}" var="cdl">
							<tr>
								<td>${cdl.name}</td>
								<td>${cdl.age }</td>
								<td>${cdl.disease }</td>
								<td>${cdl.doctor_name }</td>
								<td>${cdl.dept_name }</td>
								<td>${cdl.sex }</td>
								<td>${cdl.familydis }</td>
								<td><a class="ajax-link" href="../charts_detail.box?id=${cdl.id}">상세보기</a></td>
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
			$('select').select2();
	}
	$(document).ready(function() {
		// 테이블 영역에 ajax 적용
		$("#datatable-1 a.ajax-link").bind("click", function(e) {
			e.preventDefault();
			LoadAjaxContent($(e.target).attr("href"));
		});
		$("div.paging a").bind("click", function(e) {
			e.preventDefault();
			LoadAjaxContent($(e.target).attr("href"));
		});
		
		WinMove();
	});
</script>
