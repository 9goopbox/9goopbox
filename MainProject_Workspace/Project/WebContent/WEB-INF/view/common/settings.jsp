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
				<form class="form-horizontal" role="form" method="post" action="../profileUpdate.box" id="profup">
					<div class="col-sm-4">
						<a href="http://www.naver.com" target="new">
						<img class="img-rounded"
							src="http://i.forbesimg.com/media/lists/people/michael-bloomberg_50x50.jpg"
							alt="" height="120px" width="95px">
							</a>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="이름">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="tel" name="tel"
								placeholder="전화번호">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="email" name="email"
								placeholder="이메일">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="address" name="address"
								placeholder="주소">
						</div>
							<div class="col-sm-8" style="float:right">
							<br/><button type="submit" class="btn btn-primary btn-label-left">
								<span><i class="fa fa-rotate-left"></i></span> 수정
							</button>
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
					<i class="fa fa-cog"></i> <span>설정</span>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" role="form" method="post" action="../pwdUpdate.box" id="password">
					<div class="form-group">
						<label class="col-sm-5 control-label">비밀번호 변경</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="password" name="password"
								placeholder="비밀번호 입력">
						</div>
					</div>

					<div class="form-group">
						<label for="ui-spinner" class="col-sm-5 control-label">다시입력</label>
						<div class="col-sm-5">
							<input type="password" class="form-control"
								placeholder="비밀번호 확인">
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
