<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--Start Header-->
<header class="navbar">
	<div class="container-fluid expanded-panel">
		<div class="row">
			<div id="logo" class="col-xs-12 col-sm-2">
				<a href="user_page.html">TorchBox</a>
			</div>
			<div id="top-panel" class="col-xs-12 col-sm-10">
				<div class="row">
					<div class="col-xs-8 col-sm-4">
						<div id="search">
							<input type="text" placeholder="search" /> <i
								class="fa fa-search"></i>
						</div>
					</div>
					<div class="col-xs-4 col-sm-8 top-panel-right">
						<a href="#" class="about">about</a> <a href="index.html"
							class="style2"></a>
						<ul class="nav navbar-nav pull-right panel-menu">
							<li class="hidden-xs"><a href="index.html"
								class="modal-link"> <i class="fa fa-bell"></i> <span
									class="badge">7</span>
							</a></li>
							<li class="hidden-xs"><a class="ajax-link"
								href="ajax/calendar.html"> <i class="fa fa-calendar"></i> <span
									class="badge">7</span>
							</a></li>
							<li class="hidden-xs"><a href="ajax/page_messages.html"
								class="ajax-link"> <i class="fa fa-envelope"></i> <span
									class="badge">7</span>
							</a></li>
							<li class="dropdown"><a href="#"
								class="dropdown-toggle account" data-toggle="dropdown">
									<div class="avatar">
										<img src="img/avatar.jpg" class="img-circle" alt="avatar" />
									</div> <i class="fa fa-angle-down pull-right"></i>
									<div class="user-mini pull-right">
										<span class="welcome">안녕하세요</span> <span>이름이름</span>
									</div>
							</a>
								<ul class="dropdown-menu">
									<!-- <li>
										<a href="#" class="ajax-link">
											<i class="fa fa-user"></i>
											<span>프로필</span>
										</a>
									</li> -->
									<li><a href="ajax/timeline_newsfeed.html"
										class="ajax-link"> <i class="fa fa-thumbs-up"></i> <span>뉴스피드</span>
									</a></li>
									<!-- <li>
										<a href="ajax/gallery_simple.html" class="ajax-link">
											<i class="fa fa-picture-o"></i>
											<span>Albums</span>
										</a>
									</li> -->
									<li><a href="ajax/schedule_all.html" class="ajax-link">
											<i class="fa fa-tasks"></i> <span>일정관리</span>
									</a></li>
									<li><a href="ajax/settings.html" class="ajax-link"> <i
											class="fa fa-cog"></i> <span>설정</span>
									</a></li>
									<li><a href="logout.box"> <i class="fa fa-power-off"></i>
											<span>Logout</span>
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!--End Header-->