<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="#">9GoopBox</a></li>
			<li><a href="#">환자관리</a></li>
			<li><a href="#">수납등록</a></li>
		</ol>
	</div>
</div>

<div class="container">
	<div class="row">
		<div>
			<div class="panel with-nav-tabs panel-primary">
				<div class="panel-heading">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab1primary" data-toggle="tab">초진</a></li>
						<li><a href="#tab2primary" data-toggle="tab">재진</a></li>
					</ul>
					</li>
					</ul>
				</div>
				<div class="panel-body">
					<div class="tab-content">
						<div class="tab-pane fade in active" id="tab1primary">

							<div class="row">
								<div class="col-xs-12">
									<div class="box">
										<div class="box-header">
											<div class="box-name">
												<i class="fa fa-pencil"></i> <span>초진환자</span>
											</div>
											<div class="box-icons">
												<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
												</a> <a class="expand-link"> <i class="fa fa-expand"></i>
												</a> <a class="close-link"> <i class="fa fa-times"></i>
												</a>
											</div>
											<div class="no-move"></div>
										</div>

										<form class="form-horizontal" method="post"
											action="../recRegi.box" id="recF">
											<div class="row">
												<div class="col-md-12">
													<input type="text" class="form-control" id="name" name="name"
														placeholder="환자이름"> <br />
												</div>
												<div class="col-md-12">
													<input type="text" class="form-control" id="age" name="age"
														placeholder="나이"> <br />
												</div>

												<div class="col-md-12">
													<input type="text" class="form-control" id="sex" name="sex"
														placeholder="성별"> <br />
												</div>

												<div class="col-md-12">
													<input type="text" class="form-control" id="cost_get"
														name="cost_get" placeholder="수납비용"> <br />
												</div>
												<div class="col-md-12">
													<input type="text" class="form-control" id="med_trtmt"
														name="med_trtmt" placeholder="진료과"> <br />
												</div>
											</div>
											<div style="float: right;">
												<button type="submit" class="btn btn-primary">등록</button>
											</div>
										</form>
									</div>
								</div>
							</div>



						</div>
						<div class="tab-pane fade" id="tab2primary">
							<div class="row">
								<div>
									<div class="well">
										<div class="box">
											<div class="box-header">
												<div class="box-name">
													<i class="fa fa-binoculars"></i> <span>환자조회</span>
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
												<form method="post" action="../charts_inquiry.box"
													onsubmit="LoadAjaxContentByForm(this,'GET') ">
													<div class="col-xs-12 col-sm-2">
														<select id="kind_select2" name="searchType">
															<!-- 수정해야함!!!!!!!! 															-->
															<option value="1"
																${searchType==1?'selected="selected"':''}>환자이름</option>
															<option value="2"
																${searchType==2?'selected="selected"':''}>진료부</option>
														</select>
													</div>
													<div class="col-xs-12 col-sm-4">
														<div class="input-group">
															<input class="form-control input-lg" type="text"
																name="searchValue" value="${searchValue}">
															<div class="input-group-btn">
																<input class="btn btn-primary" type="submit" value="조회">
															</div>
														</div>
													</div>
												</form>
											</div>



											<div class="box-content no-padding">
												<table
													class="table table-bordered table-striped table-hover table-heading table-datatable"
													id="datatable-1">
													<thead>
														<tr>
															<th>선택</th>
															<th>환자이름</th>
															<th>진료부</th>
															<th>진료비</th>
														</tr>
													</thead>
													<tbody>
														<!-- 														Start: list_row -->

														<tr>
															<td><input type="checkbox" name="check1" value="Y" /></td>
															<td>이훈</td>
															<td>정형외과</td>
															<td>8,000원</td>
														</tr>
														<tr>
															<td><input type="checkbox" name="check1" value="Y" /></td>
															<td>허영란</td>
															<td>산부인과</td>
															<td>4,800원</td>
														</tr>
														<tr>
															<td><input type="checkbox" name="check1" value="Y" /></td>
															<td>정형돈</td>
															<td>내과</td>
															<td>4,500원</td>
														</tr>



														<!-- 														이 부분이 들어가야함!! -->
														<!-- 														<tr> -->
														<%-- 															<td>${cdl.name}</td> --%>
														<%-- 															<td>${cdl.age }</td> --%>
														<%-- 															<td>${cdl.disease }</td> --%>
														<%-- 															<td>${cdl.doctor_name }</td> --%>
														<%-- 															<td>${cdl.dept_name }</td> --%>
														<%-- 															<td>${cdl.sex }</td> --%>
														<%-- 															<td>${cdl.familydis }</td> --%>
														<!-- 															<td><a class="ajax-link" -->
														<%-- 																href="../charts_detail.box?id=${cdl.id}">상세보기</a></td> --%>
														<!-- 														</tr> -->






														<!-- 														End: list_row -->
													</tbody>
												</table>
												<p style="float: right;">
													<input type="submit" name="accept" class="btn btn-primary"
														value="접수" />
												</p>
												<jsp:include page="/WEB-INF/view/util/paging.jsp"></jsp:include>
											</div>
										</div>
									</div>
								</div>



								<div class="row">
									<div class="col-xs-12">
										<div class="box">
											<div class="well">
												<div class="box-header">
													<div class="box-name">
														<i class="fa fa-pencil"></i> <span>재진환자</span>
													</div>
													<div class="box-icons">
														<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
														</a> <a class="expand-link"> <i class="fa fa-expand"></i>
														</a> <a class="close-link"> <i class="fa fa-times"></i>
														</a>
													</div>
													<div class="no-move"></div>
												</div>

												<div>
													<input type="text" class="form-control" placeholder="환자이름">
													<br />
												</div>
												<div>
													<input type="text" class="form-control" placeholder="진료부">
													<br />
												</div>
												<div>
													<input type="text" class="form-control" placeholder="수납비용">
												</div>
												<div style="float: right;">
													<button type="button" class="btn btn-primary">등록</button>
												</div>
											</div>
										</div>

									</div>
								</div>



							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<style>
.panel.with-nav-tabs .panel-heading {
	padding: 5px 5px 0 5px;
}

.panel.with-nav-tabs .nav-tabs {
	border-bottom: none;
}

.panel.with-nav-tabs .nav-justified {
	margin-bottom: -1px;
}

/********************************************************************/
/*** PANEL PRIMARY ***/
.with-nav-tabs.panel-primary .nav-tabs>li>a, .with-nav-tabs.panel-primary .nav-tabs>li>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li>a:focus {
	color: #fff;
}

.with-nav-tabs.panel-primary .nav-tabs>.open>a, .with-nav-tabs.panel-primary .nav-tabs>.open>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>.open>a:focus, .with-nav-tabs.panel-primary .nav-tabs>li>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li>a:focus {
	color: #fff;
	background-color: #3071a9;
	border-color: transparent;
}

.with-nav-tabs.panel-primary .nav-tabs>li.active>a, .with-nav-tabs.panel-primary .nav-tabs>li.active>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li.active>a:focus {
	color: #428bca;
	background-color: #fff;
	border-color: #428bca;
	border-bottom-color: transparent;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu {
	background-color: #428bca;
	border-color: #3071a9;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>li>a {
	color: #fff;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>li>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>li>a:focus
	{
	background-color: #3071a9;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>.active>a,
	.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>.active>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>.active>a:focus
	{
	background-color: #4a9fe9;
}
</style>