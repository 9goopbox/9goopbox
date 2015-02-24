<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="#">Dashboard</a></li>
			<li><a href="#">Tables</a></li>
			<li><a href="#">Data Tables</a></li>
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

			<!-- 			<input type="text" class="form-control" placeholder="First name" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip for name"> -->
			<div class="img-responsive">

				<table class="table">
					<!-- 				<img src="img/EXID-HANI.jpg" width="300" weight="530" class="table-addr-img"/> -->
					<thead>
						<tr>
							<th>직원 이름</th>
							<th>나이</th>
							<th>부서</th>
							<th>직급</th>
							<th>상세보기</th>
							<th>퇴사일</th>
							<th>다운로드</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>원무부</td>
							<td>사원</td>
							<td><a href="">상세보기</a></td>
							<td>15-02-28</td>
							<td><input type="button" class="col-lg-5" value="문서내려받기"></td>
						</tr>

					</tbody>
				</table>

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
			</div>
		</div>

		<div class="box-content no-padding">
			<table
				class="table table-bordered table-striped table-hover table-heading table-datatable"
				id="datatable-1">
				<thead>
					<tr>
						<th>직원 이름</th>
						<th>나이</th>
						<th>부서</th>
						<th>직급</th>
						<th>상세보기</th>
						<th>퇴사일</th>
						<th>다운로드</th>

					</tr>
				</thead>
				<tbody>
					<!-- Start: list_row -->
					<tr>
						<td>이훈</td>
						<td>24</td>
						<td>원무부</td>
						<td>사원</td>
						<td><a href="">상세보기</a></td>
						<td>15-02-28</td>
						<td><input type="button" class="col-lg-5" value="문서내려받기"></td>
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
