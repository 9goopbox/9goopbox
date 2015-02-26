<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<a href="#" class="show-sidebar">
			<i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<li><a href="index.html">9Goopbox</a></li>
			<li><a href="#">전자결재</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-10">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-pencil"></i> <span>결재</span>
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
				<div class="col-md-6">
					<input type="text" class="form-control" placeholder="결재 제목">
					<br/>
				</div>
				<div class="col-md-6">
					<input type="text" class="form-control" placeholder="결재 종류">
					<br/>
				</div>
			</div>
			<h3>결재 내용</h3>
			<div class="form-group">
				<div class="col-sm-20">
					<textarea class="form-control" rows="5" id="wysiwig_full" ></textarea>
				</div>
			</div>
			<div style="float: right;">
				<button type="button" class="btn btn-primary">등록</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">

// Run timepicker
function DemoTimePicker(){
	$('#input_time').timepicker({setDate: new Date()});
}
$(document).ready(function() {
	// Create Wysiwig editor for textare
	TinyMCEStart('#wysiwig_full', 'extreme');
	
	// Add drag-n-drop feature to boxes
	WinMove();
});
</script>