<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<select style="float: left;">
					<option class="form-group">&nbsp;&nbsp;&nbsp;=이 름=</option>
					<option class="form-group">&nbsp;&nbsp;&nbsp;=부 서=</option>
					<option class="form-group">&nbsp;&nbsp;&nbsp;=직 급=</option>
				</select>
				<div style="float: left;">
					<input class="form-control col-lg-1" type="text">
				</div>
				<div style="float: left;">
					<button type="submit" class="btn btn-primary btn-xs">조회</button>
				</div>
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
							<th>생년월일</th>
							<th>부서</th>
							<th>직급</th>
							<th>상세보기</th>
							<th>다운로드</th>
						</tr>
					</thead>
					<tbody>
						<!-- Start: list_row -->
						<!-- 하나하나 다 입력한거임? 우리는 DB로!! -->
						<tr>
							<td><img class="img-rounded"
								src="http://i.forbesimg.com/media/lists/people/carlos-slim-helu_50x50.jpg"
								alt="">민경훈</td>
							<td>1953.0216</td>
							<td>총무부</td>
							<td>과장</td>
							<th><a href="#">상세보기</a></th>
							<th><a href="#">파일다운로드</a></th>
						</tr>
						<tr>
							<td><img class="img-rounded"
								src="http://i.forbesimg.com/media/lists/people/bill-gates_50x50.jpg"
								alt="">윤도현</td>
							<td>1948.05.05</td>
							<td>의사부</td>
							<td>원장</td>
							<th><a href="#">상세보기</a></th>
							<th><a href="#">파일다운로드</a></th>
						</tr>
						<tr>
							<td><img class="img-rounded"
								src="http://i.forbesimg.com/media/lists/people/amancio-ortega_50x50.jpg"
								alt="">김현철</td>
							<td>1968.06.30</td>
							<td>간호부</td>
							<td>간호사</td>
							<th><a href="#">상세보기</a></th>
							<th><a href="#">파일다운로드</a></th>
						</tr>

						<!-- End: list_row -->
					</tbody>

				</table>

			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	// Run Datables plugin and create 3 variants of settings
	// function AllTables(){
	// 	TestTable1();
	// 	TestTable2();
	// 	TestTable3();
	// 	LoadSelect2Script(MakeSelect2);
	// }
	function MakeSelect2() {
		// 	$('select').select2();
		// 	$('.dataTables_filter').each(function(){
		// 		$(this).find('label input[type=text]').attr('placeholder', 'Search');
		// 	});
	}
	$(document).ready(function() {
		// Load Datatables and run plugin on tables
		// 	LoadDataTablesScripts(AllTables);
		// Add Drag-n-Drop feature
		WinMove();
	});
</script>
