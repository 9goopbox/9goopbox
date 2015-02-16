<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">9급박스</a></li>
			<li><a href="#">설정</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-6">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i> <span>프로필</span>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" role="form">
					<div class="col-sm-4">
						<img class="img-rounded"
							src="http://i.forbesimg.com/media/lists/people/michael-bloomberg_50x50.jpg"
							alt="" height="100px" width="100px">
						<div class="col-sm-8">
							<br/><button type="submit" class="btn btn-primary btn-label-left">
								<span><i class="fa fa-rotate-left"></i></span> 수정
							</button>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input type="text" class="form-control" id="date3_example"
								placeholder="name">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="date_example"
								placeholder="Phone Number">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="datetime_example"
								placeholder="E-mail">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="col-xs-12 col-sm-6">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-refresh"></i> <span>설정</span>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-4 control-label">비밀번호 변경</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="newpwd"
								placeholder="New Password">
						</div>
					</div>
					
					<div class="form-group">
						<label for="ui-spinner" class="col-sm-4 control-label">다시입력</label>
						<div class="col-sm-6">
							<input type="text" id="renewpwd" class="form-control"
								placeholder="Re Password">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-4 col-sm-8">
							<button type="submit" class="btn btn-primary btn-label-left">
								<span><i class="fa fa-rotate-left"></i></span> 수정
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
    
