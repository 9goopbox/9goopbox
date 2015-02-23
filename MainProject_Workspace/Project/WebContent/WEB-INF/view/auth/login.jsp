<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%-- <tiles:insertDefinition name="loginTemplate"> --%>
<%-- 	<tiles:putAttribute name="body"> --%>

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
									<a href="ajax/page_register_v1.html"
										class="btn btn-lg btn-primary btn-block">회원가입</a>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>

<%-- 	</tiles:putAttribute> --%>
<%-- </tiles:insertDefinition> --%>
