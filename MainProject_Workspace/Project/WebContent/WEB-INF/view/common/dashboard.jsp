<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--Start Breadcrumb-->
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">Home</a></li>
			<li><a href="#">Dashboard</a></li>
		</ol>
	</div>
</div>
<!--End Breadcrumb-->

<!--Start Dashboard 1-->
<div id="dashboard-header" class="row">
	<div class="col-xs-12 ">
		<h3>9급박스에 오신걸 환영합니다!!!</h3>
	</div>
	<div class="clearfix visible-xs"></div>
	<div class="col-xs-12 col-sm-8 col-md-7 pull-right">
	</div>
</div>
<!--End Dashboard 1-->

<!--Start Dashboard 2-->
<div class="row-fluid">
	<div id="dashboard_tabs" class="col-xs-8">
		<div class="well">
			<div class="box">
				<div class="box-header">
					<div class="box-name">
						<i class="fa fa-calendar-o"></i> <span>뭘 넣을까</span>
					</div>
					<div class="box-icons pull-right">
						<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
						</a> <a class="expand-link"> <i class="fa fa-expand"></i>
						</a> <a class="close-link"> <i class="fa fa-times"></i>
						</a>
					</div>
				</div>
				<div class="box-content">
					<form class="form-horizontal" role="form">
						<img class="img-rounded"
							src="http://i.forbesimg.com/media/lists/people/michael-bloomberg_50x50.jpg"
							alt=""> 여기다 넣으시면 됩니다.

					</form>
				</div>
			</div>

			<div class="box">
				<div class="box-header">
					<div class="box-name">
						<i class="fa fa-calendar-o"></i> <span>하나 더 넣자</span>
					</div>
					<div class="box-icons pull-right">
						<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
						</a> <a class="expand-link"> <i class="fa fa-expand"></i>
						</a> <a class="close-link"> <i class="fa fa-times"></i>
						</a>
					</div>
					<div class="no-move"></div>
				</div>
				<div class="box-content">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-sm-4">여기다 넣으시면 됩니다.</div>
						</div>
					</form>
				</div>
			</div>



			<div class="box">
				<div class="box-header">
					<div class="box-name">
						<i class="fa fa-calendar-o"></i> <span>두개 더 넣자</span>
					</div>
					<div class="box-icons pull-right">
						<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
						</a> <a class="expand-link"> <i class="fa fa-expand"></i>
						</a> <a class="close-link"> <i class="fa fa-times"></i>
						</a>
					</div>
					<div class="no-move"></div>
				</div>
				<div class="box-content">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-sm-4">여기다 넣으시면 됩니다.</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>




<div class="row-fluid">
	<div id="dashboard_tabs" class="col-xs-4">
		<div class="well">
			<div class="box">
				<div class="col-sm-12">
					<div id="calendar"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function() {
	// Set Block Height
	SetMinBlockHeight($('#calendar'));
	// Create Calendar
	DrawFullCalendar();
});
</script>


</div>	
<div class="row-fluid">
	<div id="dashboard_tabs" class="col-xs-6">
		<div class="well">
	<div class="row">
	<div class="col-xs-11">
		<div class="box">
			<div class="avatar">
				<img src="img/avatar.jpg" alt="Jane" />
			</div>
			<div class="page-feed-content">
				<small class="time">회원이름, 12 분 전</small>
				<p>내용 입력 부분</p>
				<div class="likebox">
					<ul class="nav navbar-nav">
						<li><i class="fa fa-thumbs-up"></i> 좋아요 갯수</li>
						<li><i class="fa fa-thumbs-down"></i> 비추는 있어야하나</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="box">
			<div class="avatar">
				<img src="img/avatar.jpg" alt="Jane" />
			</div>
			<div class="page-feed-content">
				<small class="time">Jane Devops, 12 min ago</small>
				<p>여기는 새로만들었는데 글 하나 올릴 때마다 생성해야하나</p>
				<div class="likebox">
					<ul class="nav navbar-nav">
						<li><i class="fa fa-thumbs-up"></i> 138</li>
						<li><i class="fa fa-thumbs-down"></i> 47</li>
					</ul>
				</div>
			</div>
		</div>

	</div>

<div class="row-fluid">
	<div class="col-xs-11 col-xs-offset-1 page-feed">
	
		<div class="box">
			<div class="avatar">
				<img src="img/avatar.jpg" alt="Jane" />
			</div>
			<div class="page-feed-content">
				<small class="time">Jane Devops, 12 min ago</small>
				<p>이건 댓글인가 숨겨놓고 써야하나봐</p>
				<div class="likebox">
					<ul class="nav navbar-nav">
						<li><i class="fa fa-thumbs-up"></i> 138</li>
						<li><i class="fa fa-thumbs-down"></i> 47</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="avatar">
				<img src="img/avatar.jpg" alt="Jane" />
			</div>
			<div class="page-feed-content">
				<small class="time">유길상, 20분 전</small>
				<p>껄껄</p>
				<div class="likebox">
					<ul class="nav navbar-nav">
						<li><i class="fa fa-thumbs-up"></i> 138</li>
						<li><i class="fa fa-thumbs-down"></i> 47</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
</div>
<div class="row">
	<div class="col-xs-6">
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
	
	<!--End Dashboard Tab 1-->

<div style="height: 40px;"></div>

<script type="text/javascript">
	// Array for random data for Sparkline
	var sparkline_arr_1 = SparklineTestData();
	var sparkline_arr_2 = SparklineTestData();
	var sparkline_arr_3 = SparklineTestData();
	$(document).ready(function() {
		// Make all JS-activity for dashboard
		DashboardTabChecker();
		// Load Knob plugin and run callback for draw Knob charts for dashboard(tab-servers)
		LoadKnobScripts(DrawKnobDashboard);
		// Load Sparkline plugin and run callback for draw Sparkline charts for dashboard(top of dashboard + plot in tables)
		LoadSparkLineScript(DrawSparklineDashboard);
		// Load Morris plugin and run callback for draw Morris charts for dashboard
		LoadMorrisScripts(MorrisDashboard);
		// Load Springy plugin and run callback for draw network map for dashboard
		LoadSpringyScripts(SpringyNetmap);
		// Make beauty hover in table
		$("#ticker-table").beautyHover();
		// Run script for stock block
		CreateStockPage();
	});
</script>
