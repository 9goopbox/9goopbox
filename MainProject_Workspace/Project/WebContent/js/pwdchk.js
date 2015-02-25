/**
 * 
 */

var xhr; 
function pwdChk() {
	if (window.ActiveXObject) { 
		xhr = new ActiveXObject("Microsoft.XMLHTTP");
	} else { 
		xhr = new XMLHttpRequest();
	}
	// 파라미터 등록 
	var idv = document.getElementById("id").value;
	xhr.onreadystatechange = res;
	xhr.open("get", "idcheck.box?id="+idv, true);
	xhr.send(null);
}

function res() {
	if (xhr.readyState == 4) { 
		if (xhr.status == 200) {
			document.getElementById("target").innerHTML=xhr.responseText;
			// none은 hidden, block은 show
			document.getElementById("target").style.display="block";
		}
	}
}