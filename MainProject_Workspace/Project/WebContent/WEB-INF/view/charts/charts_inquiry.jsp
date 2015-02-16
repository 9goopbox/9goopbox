<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<table class="table">
					<!-- <img src="img/EXID-HANI.jpg" width="300" weight="530" class="table-addr-img"/> -->
					<thead>
						<tr>
							<th>환자이름</th>
							<th>나이</th>
							<th>병명</th>
							<th>담당의</th>
							<th>담당부서</th>
							<th>성별</th>
							<th>가족력</th>
							<th>수정</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a href="">수정</a></td>
						</tr>

					</tbody>
				</table>
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
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="#">상세보기</a></td>
						</tr>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="ajax/charts_detail.html">상세보기</a></td>
						</tr>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="ajax/charts_detail.html">상세보기</a></td>
						</tr>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="ajax/charts_detail.html">상세보기</a></td>
						</tr>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="ajax/charts_detail.html">상세보기</a></td>
						</tr>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="ajax/charts_detail.html">상세보기</a></td>
						</tr>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="ajax/charts_detail.html">상세보기</a></td>
						</tr>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="ajax/charts_detail.html">상세보기</a></td>
						</tr>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="ajax/charts_detail.html">상세보기</a></td>
						</tr>
						<tr>
							<td>이훈</td>
							<td>24</td>
							<td>감기</td>
							<td>김복남</td>
							<td>내과</td>
							<td>남</td>
							<td>없음</td>
							<td><a class="ajax-link" href="ajax/charts_detail.html">상세보기</a></td>
						</tr>

						<!-- End: list_row -->
					</tbody>
					<!--
					<tfoot>
						<tr>
							<th>환자이름</th>
							<th>나이</th>
							<th>병명</th>
							<th>담당의</th>
							<th>담당부서</th>
							<th>성별</th>
							<th>가족력</th>
							<th>수정</th>
						</tr>
					</tfoot>
					 -->
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
		$("#datatable-1 a").attr("href", "#");
		$("#datatable-1 a").bind("click", function() {
			LoadAjaxContent("ajax/charts_detail.html");
		});
		// 이 부분 나중에 모듈화하면 편할듯
		// $('#datatable-1 a').on('click', 'a', function (e) {
		// 	if ($(this).hasClass('ajax-link')) {
		// 		e.preventDefault();
		// 		if ($(this).hasClass('add-full')) {
		// 			$('#content').addClass('full-content');
		// 		}
		// 		else {
		// 			$('#content').removeClass('full-content');
		// 		}
		// 		var url = $(this).attr('href');
		// 		window.location.hash = url;
		// 		LoadAjaxContent(url);
		// 	}
		// };
		WinMove();
	});
</script>
