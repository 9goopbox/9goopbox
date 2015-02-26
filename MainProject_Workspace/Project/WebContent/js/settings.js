/**
 * 
 */
$(function() {
	var flag = false;
	$("#uprofile_img").change(function() {
		//확장자 자르기
		var ext = $("#uprofile_img").val().split(".").pop().toLowerCase();

		if ($.inArray(ext, [ 'png', 'gif', 'jpeg', 'jpg' ]) == -1) {
			alert("이미지만 업로드 가능합니다. 'png', 'gif', 'jpeg', 'jpg'");
			flag = false;
		} else {
			//upfile 파일 업로드 창에서 files에 0번째 즉 업로드 파일객체
			var file = $("#uprofile_img").prop("files")[0];
			//window.URL.createObjectURL() 메서드를 사용해서
			url = window.URL.createObjectURL(file);
			$("#target").attr("src", url);

		}
		flag = true;
	});
	//form 클릭 했을 때 전송
	$("#sndBtn").click(function() {
		if (flag) {
			$("#imgF").submit();
		} else {
			alert("이미지만 업로드 가능합니다. 'png', 'gif', 'jpeg', 'jpg'");
		}
	});
});