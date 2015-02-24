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
	<div class="col-xs-12 col-sm-4 col-md-5">
		<h3>Hello, Jane</h3>
	</div>
	<div class="clearfix visible-xs"></div>
	<div class="col-xs-12 col-sm-8 col-md-7 pull-right">
	</div>
</div>
<!--End Dashboard 1-->

<!--Start Dashboard 2-->
<div class="row-fluid">
	<div id="dashboard_tabs" class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-calendar-o"></i> <span>뭘 넣을까</span>
				</div>
				<div class="box-icons pull-right">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" role="form">
					<img class="img-rounded"
						src="http://i.forbesimg.com/media/lists/people/michael-bloomberg_50x50.jpg" alt="">
						
						여기다 넣으시면 됩니다.
						
				</form>
			</div>
		</div>

		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-calendar-o"></i> <span>하나 더 넣자</span>
				</div>
				<div class="box-icons pull-right">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<div class="col-sm-4">
							
							여기다 넣으시면 됩니다.
							
						</div>
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
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<div class="col-sm-4">
							
							여기다 넣으시면 됩니다.
							
						</div>
					</div>
				</form>
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
