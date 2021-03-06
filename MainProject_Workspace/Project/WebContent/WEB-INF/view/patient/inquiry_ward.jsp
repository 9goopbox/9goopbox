<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="#">Dashboard</a></li>
			<li><a href="#">차트</a></li>
			<li><a href="#">병동환자 조회</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i> <span>병동환자 조회</span>
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
					<option class="form-group">&nbsp;&nbsp;&nbsp;=병 명=</option>
					<option class="form-group">&nbsp;&nbsp;&nbsp;=담당의사=</option>
					<option class="form-group">&nbsp;&nbsp;&nbsp;=담당부서=</option>
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
					<i class="fa fa-user"></i> <span>병동환자 조회</span>
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
							<th>환자이름</th>
							<th>생년월일</th>
							<th>병명</th>
							<th>담당의사</th>
							<th>담당부서</th>
							<th>성별</th>
							<th>가족력</th>
							<th>수정</th>
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
							<td>상사병</td>
							<td>이한살</td>
							<td>코스타</td>
							<th>여자</th>
							<th>null</th>
							<th><a href="#">간호사수정</a></th>
						</tr>
						<tr>
							<td><img class="img-rounded"
								src="http://i.forbesimg.com/media/lists/people/bill-gates_50x50.jpg"
								alt="">윤도현</td>
							<td>1948.05.05</td>
							<td>장염</td>
							<td>이두살</td>
							<td>내과</td>
							<th>남자</th>
							<th>null</th>
							<th><a href="#">간호사수정</a></th>
						</tr>
						<tr>
							<td><img class="img-rounded"
								src="http://i.forbesimg.com/media/lists/people/amancio-ortega_50x50.jpg"
								alt="">김현철</td>
							<td>1968.06.30</td>
							<td>췌장암</td>
							<td>김구라</td>
							<td>넥손</td>
							<th>여자</th>
							<th>할아버지</th>
							<th><a href="#">간호사수정</a></th>
						</tr>
						<tr>
							<td><img class="img-rounded"
								src="http://i.forbesimg.com/media/lists/people/amancio-ortega_50x50.jpg"
								alt="">설리</td>
							<td>1992.08.30</td>
							<td>임신</td>
							<td>최자</td>
							<td>산부인과</td>
							<th>여자</th>
							<th>null</th>
							<th><a href="#">간호사수정</a></th>
						</tr>
						<tr>
							<td><img class="img-rounded"
								src="http://i.forbesimg.com/media/lists/people/amancio-ortega_50x50.jpg"
								alt="">남궁민</td>
							<td>1978.06.05</td>
							<td>다리골절</td>
							<td>홍진영</td>
							<td>외과</td>
							<th>남자</th>
							<th>null</th>
							<th><a href="#">간호사수정</a></th>
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
    