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
	<div class="col-xs-12 col-sm-8 col-md-7 pull-right"></div>
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
		<div class="page-header">
			<h3>
				뉴스피드<span class="pull-right label label-default"></span>
			</h3>
		</div>
		<div class="well">
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



<div class="row">
	<div id="dashboard_tabs" class="col-xs-6">
		<div class="page-header">
			<h3>
				차트조회<span class="pull-right label label-default"></span>
			</h3>
		</div>
		<div class="well">
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
				<div class="row">
					<form method="post" action="../charts_inquiry.box"
						onsubmit="LoadAjaxContentByForm(this,'GET') ">
						<div class="col-xs-12 col-sm-2">
							<select id="kind_select2" name="searchType">
								<option></option>
								<option value="1" ${searchType==1?'selected="selected"':''}>환자이름</option>
								<option value="2" ${searchType==2?'selected="selected"':''}>담당의이름</option>
								<option value="3" ${searchType==3?'selected="selected"':''}>담당의ID</option>
								<option value="4" ${searchType==4?'selected="selected"':''}>병명요약</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="input-group">
								<input class="form-control input-lg" type="text"
									name="searchValue" value="${searchValue}">
								<div class="input-group-btn">
									<input class="btn btn-primary" type="submit" value="조회">
								</div>
							</div>
						</div>
					</form>
				</div>
				
				*****************일단 캡쳐를 위해 임의 환자값 넣음*******************

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
									<td>이훈</td>
									<td>24</td>
									<td>감기</td>
									<td>김복남</td>
									<td>내과</td>
									<td>남</td>
									<td>없음</td>
									<td><a class="ajax-link"
										href="../charts_detail.box?id=${cdl.id}">상세보기</a></td>
								</tr>
										
											
																
<!-- 								이 부분이 들어가야함!! -->
<!-- 								<tr> -->
<%-- 									<td>${cdl.name}</td> --%>
<%-- 									<td>${cdl.age }</td> --%>
<%-- 									<td>${cdl.disease }</td> --%>
<%-- 									<td>${cdl.doctor_name }</td> --%>
<%-- 									<td>${cdl.dept_name }</td> --%>
<%-- 									<td>${cdl.sex }</td> --%>
<%-- 									<td>${cdl.familydis }</td> --%>
<!-- 									<td><a class="ajax-link" -->
<%-- 										href="../charts_detail.box?id=${cdl.id}">상세보기</a></td> --%>
<!-- 								</tr> -->
							
							
							
							
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
