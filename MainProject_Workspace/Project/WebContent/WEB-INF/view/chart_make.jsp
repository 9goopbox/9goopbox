<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar">
			<i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">TorchBox</a></li>
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
					<i class="fa fa-pencil"></i> <span>차트 작성</span>
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
				<div class="col-lg-3">
					<input type="text" class="form-control" placeholder="이름">
				</div>
				<div class="col-lg-3">
					<input type="text" class="form-control" placeholder="나이">
				</div>
				<div class="col-lg-3">
					<input type="text" class="form-control" placeholder="성별">
				</div>
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
			<div class="form-group">
				<div class="col-sm-20">
					<textarea class="form-control" rows="5" id="wysiwig_full"></textarea>
				</div>
			</div>

			<div style="float: right;">
				<button type="button" class="btn btn-default">등록</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>