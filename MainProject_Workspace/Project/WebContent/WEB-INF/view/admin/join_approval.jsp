<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="#">시스템관리자</a></li>
			<li><a href="#">가입승인</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-thumb-tack"></i> <span>가입 승인</span>
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
							<th>이름</th>
							<th>나이</th>
							<th>부서</th>
							<th>직급</th>
							<th>승인</th>

						</tr>
					</thead>
					<tbody>
						<!-- Start: list_row -->
						<tr>
							<td>허복남</td>
							<td>45</td>
							<td>원무부</td>
							<td>과장</td>
							<td><input type="button" class="col-lg-3" value="승인"></input>
							</td>

						</tr>

						<!-- End: list_row -->
					</tbody>

					</div>
