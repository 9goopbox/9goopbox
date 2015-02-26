<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="user_page.html">TorchBox</a></li>
			<li><a href="#">전자차트</a></li>
			<li><a href="#">차트작성</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
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
			<div class="row">
				<div class="col-xs-12"><h3 class="page-header">환자</h3></div>
				<div class="col-xs-12 col-sm-6 col-lg-3">이름 : ${pvo.name}</div>
				<div class="col-xs-12 col-sm-6 col-lg-3">나이 : ${pvo.age}</div>
				<div class="col-xs-12 col-sm-6 col-lg-3">성별 : ${pvo.sex}</div>
				<div class="col-xs-12 col-sm-6 col-lg-3">가족력 : ${pvo.familydis}</div>
				<div class="col-xs-12 col-sm-6 col-lg-3">가족력 : ${pvo.familydis}</div>
			</div>
			<div class="row">
				<div class="col-lg-5">
					<input type="text" class="form-control" placeholder="주소">
				</div>
				<div class="col-lg-4">
					<input type="text" class="form-control" placeholder="전화번호">
				</div>
				<div class="col-lg-3">
					<input type="text" class="form-control" placeholder="피보험자">
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3">
					<input type="text" class="form-control" placeholder="신장">
				</div>
				<div class="col-lg-3">
					<input type="text" class="form-control" placeholder="체중">
				</div>
				<div class="col-lg-3">
					<input type="text" class="form-control" placeholder="가족력">
				</div>
			</div>
			<h3>진료기록</h3>
			<textarea class="form-control" rows="11"></textarea>
			<div style="float: right;">
				<button type="button" class="btn btn-default">등록</button>
			</div>
		</div>
	</div>
</div>
