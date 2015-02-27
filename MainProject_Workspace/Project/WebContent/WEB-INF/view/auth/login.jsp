<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>9급박스</title>
<meta name="description" content="description">
<meta name="author" content="DevOOPS">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="plugins/bootstrap/bootstrap.css" rel="stylesheet">
<link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Righteous'
	rel='stylesheet' type='text/css'>
<link href="plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
<link href="plugins/xcharts/xcharts.min.css" rel="stylesheet">
<link href="plugins/select2/select2.css" rel="stylesheet">
<link href="plugins/justified-gallery/justifiedGallery.css"
	rel="stylesheet">
<link href="css/style_v1.css" rel="stylesheet">
<link href="plugins/chartist/chartist.min.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
				<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
				<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
		<![endif]-->
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
</head>
<body>

	<div class="container">

		<div class="row" style="margin-top: 20px">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form" action="loginok.box" method="post">
					<fieldset>
						<h1>9goopBox</h1>
						<br />
						<h3>활기찬 하루 되세요!^^</h3>
						<hr class="colorgraph">

						<div class="form-group">
							<input type="text" name="id" id="id"
								class="form-control input-lg" placeholder="아이디">
						</div>
						<div class="form-group">
							<input type="password" name="password" id="password"
								class="form-control input-lg" placeholder="비밀번호">
						</div>
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<input type="submit" class="btn btn-lg btn-success btn-block"
									value="로그인">

							</div>
							<div class="col-xs-6 col-sm-6 col-md-6">
								<a href="./register.box"
									class="btn btn-lg btn-primary btn-block">회원가입</a>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>

	</div>
	<!--End Container-->
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!--<script src="http://code.jquery.com/jquery.js"></script>-->
	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<script src="plugins/justified-gallery/jquery.justifiedGallery.min.js"></script>
	<script src="plugins/tinymce/tinymce.min.js"></script>
	<script src="plugins/tinymce/jquery.tinymce.min.js"></script>
	<!-- All functions for this theme + document.ready processing -->


	<script>
		$(function() {
			$('.button-checkbox')
					.each(
							function() {
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

								$button.on('click', function() {
									$checkbox.prop('checked', !$checkbox
											.is(':checked'));
									$checkbox.triggerHandler('change');
									updateDisplay();
								});

								$checkbox.on('change', function() {
									updateDisplay();
								});

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
								function init() {
									updateDisplay();
									// Inject the icon if applicable
									if ($button.find('.state-icon').length == 0) {
										$button.prepend('<i class="state-icon '
												+ settings[$button
														.data('state')].icon
												+ '"></i>?');
									}
								}
								init();
							});
		});
	</script>
</body>
</html>

