<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">9GoopBox</a></li>
			<li><a href="#">전자결재</a></li>
		</ol>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-xs-10">
			<div class="panel with-nav-tabs panel-primary">
				<div class="panel-heading">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab1primary" data-toggle="tab">기안서
								작성</a></li>
						<li><a href="#tab2primary" data-toggle="tab">결재중</a></li>
						<li><a href="#tab3primary" data-toggle="tab">반려</a></li>
						<li><a href="#tab4primary" data-toggle="tab">결재</a></li>
					</ul>
					</li>
					</ul>
				</div>
				<div class="panel-body">
					<div class="tab-content">
						<div class="tab-pane fade in active" id="tab1primary">

							<div class="row">
								<div class="col-xs-12">
									<div class="box">
										<div class="box-header">
											<div class="box-name">
												<i class="fa fa-pencil"></i> <span>기안서 작성</span>
											</div>
											<div class="box-icons">
												<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
												</a> <a class="expand-link"> <i class="fa fa-expand"></i>
												</a> <a class="close-link"> <i class="fa fa-times"></i>
												</a>
											</div>
											<div class="no-move"></div>
										</div>



										<form class="form-horizontal" role="form" method="post"
											action="../electsave.box" enctype="multipart/form-data"
											id="electF"
											onsubmit="LoadAjaxContentByForm(this,'POST'); return false;">
											<div class="row">
												<div class="col-md-6">
													<input type="text" class="form-control" name="title"
														id="title" placeholder="결재제목"> <br />
												</div>
												<div class="col-md-6">
													<input type="text" class="form-control" name="apprs_id"
														id="requester_id" placeholder="결재자id"> <br />
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<input type="text" class="form-control" name="kind"
														id="kind" placeholder="결재종류"> <br />
												</div>

												<div class="col-md-6">
													<input type="text" class="form-control" name="requester_id"
														id="name" placeholder="결재요청자"> <br />
												</div>
											</div>

											<h4>요청내용 & 첨부파일</h4>
											<div class="form-group">
												<div class="col-sm-12">
													<textarea class="form-control" rows="5" name="cont"
														id="wysiwig_full">
													</textarea>
												</div>
												<div style="float: right;">
													<button type="submit" class="btn btn-primary">등록</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="tab2primary">

							<div class="box-content no-padding">
								<table
									class="table table-bordered table-striped table-hover table-heading table-datatable"
									id="datatable-1">
									<thead>
										<tr>
											<th>결재번호</th>
											<th>제목</th>
											<th>결재자</th>
											<th>조회</th>
										</tr>
									</thead>
									<tbody>
										<!-- Start: list_row -->
										<c:forEach var="listv" items="${listv }">
											<tr>
												<td>${listv.evo.id }</td>
												<td>${listv.evo.title }</td>
												<td>${listv.evo.name }</td>
												<td><a href="">보기</a></td>
											</tr>
										</c:forEach>
										<!-- End: list_row -->
									</tbody>
								</table>
							</div>




						</div>
						<div class="tab-pane fade" id="tab3primary">

							<div class="box-content no-padding">
								<table
									class="table table-bordered table-striped table-hover table-heading table-datatable"
									id="datatable-1">
									<thead>
										<tr>
											<th>기안일자</th>
											<th>제목</th>
											<th>구분</th>
											<th>기안자</th>
											<th>결제자</th>
											<th>진행상태</th>
											<th>결제</th>
											<th>기안서복사</th>
											<th>조회</th>
										</tr>
									</thead>
									<tbody>
										<!-- Start: list_row -->
										<tr>
											<td>반려</td>
											<td>반려</td>
											<td>반려</td>
											<td>반려</td>
											<td>반려</td>
											<td><strong>진행중</strong></td>
											<td><a href="">보기</a></td>
											<td><a href="">복사</a></td>
											<td></td>
										</tr>

										<!-- End: list_row -->
									</tbody>
								</table>
							</div>

						</div>
						<div class="tab-pane fade" id="tab4primary">

							<div class="box-content no-padding">
								<table
									class="table table-bordered table-striped table-hover table-heading table-datatable"
									id="datatable-1">
									<thead>
										<tr>
											<th>기안일자</th>
											<th>제목</th>
											<th>구분</th>
											<th>기안자</th>
											<th>결제자</th>
											<th>진행상태</th>
											<th>결제</th>
											<th>기안서복사</th>
											<th>조회</th>
										</tr>
									</thead>
									<tbody>
										<!-- Start: list_row -->
										<tr>
											<td>결제</td>
											<td>결제</td>
											<td>결제</td>
											<td>결제</td>
											<td>결제</td>
											<td><strong>진행중</strong></td>
											<td><a href="">보기</a></td>
											<td><a href="">복사</a></td>
											<td></td>
										</tr>

										<!-- End: list_row -->
									</tbody>
								</table>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	// Run timepicker
	function DemoTimePicker() {
		$('#input_time').timepicker({
			setDate : new Date()
		});
	}
	$(document).ready(function() {
		// Create Wysiwig editor for textare
		TinyMCEStart('#wysiwig_full', 'extreme');

		// Add drag-n-drop feature to boxes
		WinMove();
	});
</script>

<style>
.panel.with-nav-tabs .panel-heading {
	padding: 5px 5px 0 5px;
}

.panel.with-nav-tabs .nav-tabs {
	border-bottom: none;
}

.panel.with-nav-tabs .nav-justified {
	margin-bottom: -1px;
}

/********************************************************************/
/*** PANEL PRIMARY ***/
.with-nav-tabs.panel-primary .nav-tabs>li>a, .with-nav-tabs.panel-primary .nav-tabs>li>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li>a:focus {
	color: #fff;
}

.with-nav-tabs.panel-primary .nav-tabs>.open>a, .with-nav-tabs.panel-primary .nav-tabs>.open>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>.open>a:focus, .with-nav-tabs.panel-primary .nav-tabs>li>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li>a:focus {
	color: #fff;
	background-color: #3071a9;
	border-color: transparent;
}

.with-nav-tabs.panel-primary .nav-tabs>li.active>a, .with-nav-tabs.panel-primary .nav-tabs>li.active>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li.active>a:focus {
	color: #428bca;
	background-color: #fff;
	border-color: #428bca;
	border-bottom-color: transparent;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu {
	background-color: #428bca;
	border-color: #3071a9;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>li>a {
	color: #fff;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>li>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>li>a:focus
	{
	background-color: #3071a9;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>.active>a,
	.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>.active>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>.active>a:focus
	{
	background-color: #4a9fe9;
}
</style>
