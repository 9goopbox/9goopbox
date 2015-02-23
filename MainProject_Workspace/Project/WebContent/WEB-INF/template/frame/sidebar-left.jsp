<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="sidebar-left" class="col-xs-2 col-sm-2">
	<ul class="nav main-menu">
		<li><a href="ajax/dashboard.html" class="ajax-link"> <i
				class="fa fa-hospital-o"></i> <span class="hidden-xs">Dashboard</span>
		</a></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"> <i
				class="fa fa-list-alt"></i> <span class="hidden-xs">전자차트</span>
		</a>
			<ul class="dropdown-menu">
				<li><a class="ajax-link" href="view/charts_make.html">차트작성</a></li>
				<li><a class="ajax-link" href="ajax/charts_inquiry.html">차트조회</a></li>
				<li><a class="ajax-link" href="ajax/inquiry_ward.html">병동환자조회</a></li>
				<li><a class="ajax-link" href="ajax/inquiry_outpatient.html">외래환자조회</a></li>
			</ul></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"> <i
				class="fa fa-thumbs-up"></i> <span class="hidden-xs">타임라인</span>
		</a>
			<ul class="dropdown-menu">
				<li><a class="ajax-link"
					href="../timeline/timeline_newsfeed.jsp">뉴스피드</a></li>
			</ul></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"> <i
				class="fa fa-calendar"></i> <span class="hidden-xs">일정관리</span>
		</a>
			<ul class="dropdown-menu">
				<li><a class="ajax-link" href="ajax/schedule_all.html">전체
						일정</a></li>
				<li><a class="ajax-link" href="ajax/schedule_personal.html">개인
						일정</a></li>
				<li><a class="ajax-link" href="ajax/schedule_business.html">업무
						일정</a></li>
			</ul></li>
		<li><a class="ajax-link" href="ajax/electronic_approval.html">
				<i class="fa fa-font"></i> <span class="hidden-xs">전자결재</span>
		</a></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"> <i
				class="fa fa-medkit"></i> <span class="hidden-xs">재고관리</span>
		</a>
			<ul class="dropdown-menu">
				<li><a class="ajax-link" href="ajax/inventory_list.html">조회</a></li>
				<li><a class="ajax-link" href="ajax/inventory_add.html">발주</a></li>
			</ul></li>

		<li class="dropdown"><a href="#" class="dropdown-toggle"> <i
				class="fa fa-users"></i> <span class="hidden-xs">인사 관리</span>
		</a>
			<ul class="dropdown-menu">
				<li><a class="ajax-link" href="ajax/management_staff.html">직원
						관리</a></li>
				<li><a class="ajax-link" href="ajax/management_retire.html">퇴사
						관리</a></li>
				<li><a class="ajax-link" href="ajax/management_pay.html">급여
						관리</a></li>
			</ul></li>

		<li class="dropdown"><a href="#" class="dropdown-toggle"> <i
				class="fa fa-cogs"></i> <span class="hidden-xs">시스템관리자</span>
		</a>
			<ul class="dropdown-menu">
				<li><a class="ajax-link" href="ajax/join_approval.html">가입
						승인</a></li>
				<li><a class="ajax-link" href="ajax/staff_management.html">부서생성</a></li>
				<li><a class="ajax-link" href="ajax/calendar.html">부서삭제</a></li>
			</ul></li>
		<li><a class="ajax-link" href="view/common/settings.jsp"> <i
				class="fa fa-cog"></i> <span class="hidden-xs">설정</span>
		</a></li>
	</ul>
</div>
