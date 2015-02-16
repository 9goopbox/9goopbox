<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">TorchBox</a></li>
			<li><a href="#">전자결재</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<!--
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-usd"></i> <span>차트 상세 설명</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			 -->
			<div>
				<div style="float: left;">
					<button type="button" class="btn btn-primary">전체</button>
					&nbsp;
				</div>
				<div style="float: left;">
					<button type="button" class="btn btn-primary">기안중</button>
					&nbsp;
				</div>
				<div style="float: left;">
					<button type="button" class="btn btn-primary">진행중</button>
					&nbsp;
				</div>
				<div style="float: left;">
					<button type="button" class="btn btn-primary">반려</button>
					&nbsp;
				</div>
				<div style="float: left;">
					<button type="button" class="btn btn-primary">결제</button>
					&nbsp;
				</div>
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
				<td>2015/01/29</td>
				<td>과장님결제서류올립니다</td>
				<td>구분</td>
				<td>김복남</td>
				<td>허식후</td>
				<td><strong>진행중</strong></td>
				<td><a href="">보기</a></td>
				<td><a href="">복사</a></td>
				<td></td>
			</tr>

			<!-- End: list_row -->
		</tbody>
	</table>
</div>