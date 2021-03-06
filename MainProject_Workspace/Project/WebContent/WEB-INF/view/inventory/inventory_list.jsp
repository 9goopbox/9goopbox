<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="#">9GoopBox</a></li>
			<li><a href="#">비품관리</a></li>
			<li><a href="#">조회</a></li>
		</ol>
	</div>
</div>


<div class="row">
	<div class="col-xs-12">
		<!-- padding xs 12 -->
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-newspaper-o"></i> <span>비품조회</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			
			<form method="get" action="../invenSearch.box" onsubmit="LoadAjaxContentByForm(this,'GET') ; return false;">
			
			<div class="box-content">
				<div class="row">
					<!-- table : search -->
					<div class="col-xs-12 col-sm-2">
						<input id="search-date-start" class="form-control" type="text"
							placeholder="시작일"></input>
					</div>
					<div class="col-xs-12 col-sm-2 ">
						<input type="text" id="search-date-end" class="form-control"
							placeholder="종료일"></input>
					</div>
					<div class="col-xs-12 col-sm-4">
					
						<select id="searchType" name="searchType" class="input-sm populate placeholder">
							<option></option>
							<!-- http://stackoverflow.com/a/21616069 -->
							
							<option value="1" ${searchType==1?'selected="selected"':''}>비품번호</option>
							<option value="2" ${searchType==2?'selected="selected"':''}>이름</option>
							<option value="3" ${searchType==3?'selected="selected"':''}>수량 (이상)</option>
							<option value="4" ${searchType==4?'selected="selected"':''}>수량 (이하)</option>
<!-- 							<option>비품위치</option> -->
							<option value="5" ${searchType==5?'selected="selected"':''}>구입가격 (이상)</option>
							<option value="6" ${searchType==6?'selected="selected"':''}>구입가격 (이하)</option>
							<option value="7" ${searchType==7?'selected="selected"':''}>비고</option>
							<option value="8" ${searchType==8?'selected="selected"':''}>담당관리자</option>
						</select>
					</div>
					<div class="col-sm-4">
						<div class="input-group input-group-sm">
							<input type="text" class="form-control" name="searchValue" id="searchValue">
								<span class="input-group-btn">
									<button class="btn btn-default btn-xs" type="submit" >
										<i class="fa fa-search"></i>
									</button>
								</span>
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->
				</div>

				<!-- table : search end -->
				<table
					class="table table-bordered table-striped table-hover table-heading table-datatable"
					id="datatable-1">
					<thead>
						<tr>
							<th>비품번호</th>
							<th>분류</th>
							<th>이름</th>
							<th>수량</th>
							<th>구입일</th>
<!-- 							<th>비품위치</th> -->
							<th>구입가격</th>
							<th>담당관리자</th>
							<th>비고</th>
<!-- 							<th>비교</th> -->
<!-- 							<th>수정</th> -->
						</tr>
					</thead>
					<tbody>

						<!-- Start: list_row -->
						<c:forEach var="listv" items="${listv }">
						<tr>
							<td>${listv.id }</td>
							<td>${listv.category }</td>
							<td>${listv.name }</td>
							<td>${listv.amount }</td>
							<td>${listv.buyDate }</td>
<!-- 							<td>본관/105호(내과진찰실)</td> -->
							<td>${listv.buyPrice }</td>
							<td>${listv.mananame }</td>
							<td>${listv.memo }</td>
							<td></td>
<!-- 							<td><a href="#">비교</a></td> -->
<!-- 							<td><a href="#">수정</a></td> -->
						</tr>
						</c:forEach>
						<!-- End: list_row -->
					</tbody>
<!-- 					<tfoot> -->
<!-- 						<tr> -->
<!-- 							<th>No.</th> -->
<!-- 							<th>분류</th> -->
<!-- 							<th>비품번호</th> -->
<!-- 							<th>이름</th> -->
<!-- 							<th>수량</th> -->
<!-- 							<th>비품위치</th> -->
<!-- 							<th>구입년월</th> -->
<!-- 							<th>구입가격</th> -->
<!-- 							<th>비고</th> -->
<!-- 							<th>담당관리자</th> -->
<!-- 							<th>비교</th> -->
<!-- 							<th>수정</th> -->
<!-- 						</tr> -->
<!-- 					</tfoot> -->
				</table>
			</div>
		</div>
		</form>
		<!-- box end -->
	</div>
	<!-- padding xs 12 end -->
</div>
<!-- search end -->

<div class="row">
	<div class="col-xs-12 col-sm-6">
		<!-- padding xs 12 -->
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-bar-chart"></i> <span>통계목록</span>
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
				<!-- table : search end -->
				<table
					class="table table-bordered table-striped table-hover table-heading table-datatable"
					id="datatable-1">
					<thead>
						<tr>
							<th>일련번호</th>
							<th>이름</th>
							<th>수량</th>
							<th>제거</th>
						</tr>
					</thead>
					<tbody>
						<!-- Start: list_row -->
						<tr>
							<td>112-534</td>
							<td>소독고무장갑</td>
							<td>176</td>
							<td><a href="#">제거</a></td>
						</tr>
						<tr>
							<td>112-534</td>
							<td>소독메디키트</td>
							<td>123</td>
							<td><a href="#">제거</a></td>
						</tr>
						<!-- End: list_row -->
					</tbody>
				</table>
			</div>
		</div>
		<!-- box end -->
	</div>
	<!-- padding xs 12 end -->
	<div class="col-xs-12 col-sm-6">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-search"></i> <span>통계결과</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<div id="xchart-2" style="height: 200px;"></div>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		// TimePicker 플러그인을 구동, 콜백 함수에서 date / time picker를 적용
		LoadTimePickerScript(function() {
			$('#search-date-start').datepicker({});
			$('#search-date-end').datepicker({});
		});

		// select2 플러그인 로드 후 콜백 실행
		LoadSelect2Script(function() {
			$('#s2_searchKind').select2({
				placeholder : "검색기준"
			});
		});
		// xCharts2 로드
		LoadXChartScript(function() {
			// 일단 복붙
			var data = {
				"xScale" : "ordinal",
				"yScale" : "linear",
				"main" : [ {
					"className" : ".xchart-class-2",
					"data" : [ {
						"x" : "소독고무장갑",
						"y" : 173
					}, {
						"x" : "소독메디키트",
						"y" : 123
					} ]
				} ]
			};
			var myChart = new xChart('bar', data, '#xchart-2');
		});

		// 박스에 드래그 / 드롭 적용
		WinMove();
	});
</script>
