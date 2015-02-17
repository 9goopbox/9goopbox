<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>DevOOPS</title>
<meta name="description" content="description">
<meta name="author" content="Evgeniya">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../plugins/bootstrap/bootstrap.css" rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Righteous'
	rel='stylesheet' type='text/css'>
<link href="../css/style_v1.css" rel="stylesheet">
<script src="../plugins/jquery/jquery.min.js"></script>
<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
				<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
				<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<div class="container">
		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form">
					<br />
					<h1>9goopBox</h1>
					<br />
					<h3>
						Please Sign Up <small>It's free and always will be.</small>
					</h3>
					<hr class="colorgraph">
					<div class="row">

						<!-- 						<div class="col-xs-2"> -->
						<!-- 							<select id="el2"> -->
						<!-- 								<option>의사</option> -->
						<!-- 								<option>간호사</option> -->
						<!-- 								<option>직원</option> -->
						<!-- 							</select> -->
						<!-- 						</div> -->


						<div class="col-xs-8">
							<div class="form-group">
								<input type="text" name="id" id="id"
									class="form-control input-lg" placeholder="아이디" tabindex="1">
							</div>
						</div>
						<div class="col-xs-4">
							<a href="../ajax/idchk.jsp?cnt=
							${id}
							" data-width="400" data-height="200"
								class="btn btn-default btn-block btn-lg">중복확인</a>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="password" name="password" id="password"
									class="form-control input-lg" placeholder="비밀번호" tabindex="2">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="password" name="password_confirmation"
									id="password_confirmation" class="form-control input-lg"
									placeholder="비밀번호 확인" tabindex="3">
							</div>
						</div>
					</div>
					<div class="form-group">
						<input type="text" name="name" id="name"
							class="form-control input-lg" placeholder="이름" tabindex="4">
					</div>

					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="text" name="dept_id" id="dept_id"
									class="form-control input-lg" placeholder="부서" tabindex="5">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="text" name="position" id="position"
									class="form-control input-lg" placeholder="직급" tabindex="6">
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="text" name="email" id="email"
									class="form-control input-lg" placeholder="이메일" tabindex="7">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="text" name="tel" id="tel"
									class="form-control input-lg" placeholder="전화번호" tabindex="8">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<input type="text" name="post1" id="post1"
								class="form-control input-lg" placeholder="" tabindex="9">
						</div>
						<div class="col-md-1">
							<h1 font-weight bold>-</h1>
						</div>
						<div class="col-md-4">
							<input type="text" name="post2" id="post2"
								class="form-control input-lg" placeholder="" tabindex="10">

						</div>
						<div class="col-md-3">
							<input type="button" value="우편번호 검색"
								class="btn btn-warning btn-block btn-lg"
								onclick="openDaumPostcode()" tabindex="9">
						</div>
					</div>


					<div class="form-group">
						<input type="address" name="addr1" id="addr1"
							class="form-control input-lg" placeholder="주소" tabindex="11">
					</div>

					<div class="form-group">
						<input type="address" name="addr2" id="addr2"
							class="form-control input-lg" placeholder="상세주소" tabindex="12">
					</div>



					<div class="col-sm-14">
						<div class="box">
							<div class="box-header">
								<div class="box-name">
									<i class="fa fa-search"></i> <span>개인정보 수집에 대한 동의</span>
								</div>
								<div class="box-icons pull-right">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="expand-link"> <i class="fa fa-expand"></i>
									</a> <a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
								<div class="no-move"></div>
							</div>

							<div class="box-content" id="accordion">
								<h5 class="cursor_test">>전화번호 수집</h5>
								<div>
									<p>회원가입 외 니 번호 따려고 적는게 아님</p>
									<div>
										<div class="checkbox" style="float: right">
											<label> <input type="checkbox" checked>전화번호
												수집에 동의 <i class="fa fa-square-o"></i>
											</label>
										</div>
									</div>

								</div>
								<h5 class="cursor_test">>주소 수집</h5>
								<div>
									<p>회원가입 외 니 네집에 택배 보낼꺼 아님</p>
									<div>
										<div class="checkbox" style="float: right">
											<label> <input type="checkbox" checked>주소 수집에
												동의 <i class="fa fa-square-o"></i>
											</label>
										</div>
									</div>
								</div>
								<h5 class="cursor_test">>비밀번호 수집</h5>
								<div>
									<p>회원가입 외 니 비밀번호 해킹따위 안함</p>
									<div>
										<div class="checkbox" style="float: right">
											<label> <input type="checkbox" checked>비밀번호
												수집에 동의 <i class="fa fa-square-o"></i>
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<a href="../index.html" class="btn btn-success btn-block btn-lg">로그인</a>
						</div>
						<div class="col-xs-12 col-md-6">
							<input type="submit" value="등록"
								class="btn btn-primary btn-block btn-lg" tabindex="13">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<style>
/* Credit to bootsnipp.com for the css for the color graph */
.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>

	<script>
		$(function() {
			$('.button-checkbox')
					.each(
							function() {

								// Settings
								var $widget = $(this), $button = $widget
										.find('button'), $checkbox = $widget
										.find('input:checkbox'), color = $button
										.data('color'), settings = {
									on : {
										icon : 'glyphicon glyphicon-check'
									},
									off : {
										icon : 'glyphicon glyphicon-unchecked'
									}
								};

								// Event Handlers
								$button.on('click', function() {
									$checkbox.prop('checked', !$checkbox
											.is(':checked'));
									$checkbox.triggerHandler('change');
									updateDisplay();
								});
								$checkbox.on('change', function() {
									updateDisplay();
								});

								// Actions
								function updateDisplay() {
									var isChecked = $checkbox.is(':checked');

									// Set the button's state
									$button.data('state', (isChecked) ? "on"
											: "off");

									// Set the button's icon
									$button
											.find('.state-icon')
											.removeClass()
											.addClass(
													'state-icon '
															+ settings[$button
																	.data('state')].icon);

									// Update the button's color
									if (isChecked) {
										$button.removeClass('btn-default')
												.addClass(
														'btn-' + color
																+ ' active');
									} else {
										$button.removeClass(
												'btn-' + color + ' active')
												.addClass('btn-default');
									}
								}

								// Initialization
								function init() {

									updateDisplay();

									// Inject the icon if applicable
									if ($button.find('.state-icon').length == 0) {
										$button.prepend('<i class="state-icon '
												+ settings[$button
														.data('state')].icon
												+ '"></i>');
									}
								}
								init();
							});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			// Make accordion feature of jQuery-UI
			$("#accordion").accordion({
				collapsible : true,
				active : false
			});
		});
	</script>

	<script>
		function openDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					document.getElementById('post1').value = data.postcode1;
					document.getElementById('post2').value = data.postcode2;
					document.getElementById('addr1').value = data.address;
					document.getElementById('addr2').focus();
				}
			}).open();
		}
	</script>

	<script type="text/javascript">
		$(function() {
			$('.btn-default').click(
					function(event) {
						var href = $(this).attr('href');
						var width = $(this).attr('data-width');
						var height = $(this).attr('data-height');

						window.open(href, 'btn-default', 'width=' + width
								+ ',height=' + height + '');

						event.preventDefault();
					});
		});
	</script>

<style>
	.cursor_test {
		cursor: pointer;
	}
</style>

</body>
</html>

