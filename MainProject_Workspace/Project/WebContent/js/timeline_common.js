// 갱신
$(function () {
	for (var i = 1; i < 99999; i++)
        window.clearInterval(i);
	console.log("initialize works");
	// interval request : refresh...
	var myfn = function () {
		//console.log("interval function");
		var date = new Date().getTime().toString();
		return function () {
			data = $.ajax("../timeline_article_json.box", {
				"data" : {"date" : date}
			});
			
//			data = {
//					"articles" :
//						[ {
//							"user": {
//								"id":"123",
//								"name" : "writter",
//								"profile_img" : ""
//							},
//							"article": {
//								"id" : "12113",
//								"cont" : "내용",
//								"date" : "Sat Feb 28 2015 02:48:40 GMT+0900",
//								"kind" : "종류",
//								"ref_id" : "",
//								"head_id" : "article.head_id",
//								"attach_id" : ""
//							}
//						  }
//					    ],
//					    "count" : 1
//					};
			
			date = new Date().getTime();
			console.log("date : " + date);
			if (data.articles != null)
			data.articles.forEach(function (d) {
				//console.log(d);
				tlInsert($("#timeline"),makeArticle(d), d.article.id);
				tlLimit($("#timeline"));
			});	
		}
	};
	setInterval(myfn(), 1000);
});

/**
 * timeline_common for common works
 */
var articlesA = new Array();


// tl 상단에 삽입
function tlInsert(parent_obj, str, id) {
	var index = articlesA.indexOf(id);
	if (index <= -1) {
		$(parent_obj).prepend(str);
		articlesA.push(id);
		//console.log(articlesA)
	}
}

function tlLimit(parent_obj, count) {
	if ($(parent_obj).children().length > 30) {
		var rmobj = $(parent_obj).children().last();
		
		var index = articlesA.indexOf($(rmobj).attr("data-articleid"));
		if (index > -1) {
			articlesA.splice(index, 1);
		}
		
		rmobj.remove();
	}
}
/**
 * 특정 장소로 요청하면 이런 응답을 해줌
 * 목적 : 서버가 타임라인의 게시글들의 데이터를 반환 (최대 30개)
 * 클라이언트가 주는 데이터
 * 		date : 클라이언트가 최종 갱신했던 시간. null 값이면, 최근부터 30개까지 반환
 * 		feed : (쓰이지 않음, 추후 확장용 : 어느 타임라인을 보고있냐에 따라 다르게 처리)
 * 클라이언트가 주지 않는 데이터
 * 		userid : 세션의 userid : 타임라인에 어떤 게시글을 출력할지를 결정하는 요소
 * 			1. 자기 자신의 게시글
 * 			2. 사용자가 지켜보고 있는 직원의 게시글 (look 테이블이 추가됨)
 * 			3. 추후확장 : 공유된 게시글 (아직 구현하지 않음)
 * 
 * {
 * 	"articles" :
 * 	[ {
 * 		"user": {
 * 			"id":"article.writer_id",
 * 			"name" : "emplyoee.name (조인으로 찾은 직원 이름값)",
 * 			"profile_img" : "이미지의 URL"
 * 		},
 * 		"article": {
 * 			"cont" : "article.cont",
 * 			"date" : "article.updated",
 * 			"kind" : "article.kind",
 * 			"ref_id" : "article.ref_id",
 * 			"head_id" : "article.head_id",
 * 			"attach_id" : "article.attach_id"
 * 		},
 * 		"tag" : ["tag1", "tag2", "tag3"]
 * 	  }, (이렇게 생긴 객체가 여러개)
 *  ],
 *  "count" : 보내준 글 갯수 
 * }
 */
//(select cont,date,kind,ref_id,head_id,attach_id from department)
/**
 * 
 * @param artDat
 * @returns
 */
function makeArticle(data) {
	//console.log(data);
	//console.log(data.article.id);
	var atcl = "";
	atcl += '<div class="col-xs-12 page-feed" data-date="' + data.article.date + ' data-articleid="' +data.article.id  + '"">';
	atcl += '<div class="box">';
	
	atcl += '<div class="avatar">';
	atcl += '<img src="../upload/'+data.user.profile_img+'" alt="profile_pic" />';
	atcl += '</div>';
	
	atcl += '<div class="page-feed-content">';
		
	atcl += '<span><b>' + data.user.name + '</b> <small>@' + data.user.id + '</small> <small class="time">' + data.article.date + '</small></span>';
	atcl += '<p>' + data.article.cont + '</p>';
	atcl += '<div class="likebox">';
	atcl += '<ul class="nav navbar-nav">';
	atcl += '<li><a href="#"><i class="fa fa-reply"></i></a></li>';
	atcl += '<li><a href="#"><i class="fa fa-share-alt"></i><span class="count">30</span></a></li>';
	atcl += '<li><a href="#"><i class="fa fa-tags"></i></a></li>';
//<!-- 						<li><a href="#"><i class="fa fa-download"></i><span class="count">30</span></a></li> -->
	if (data.article.ref_id != null)
		atcl += '<li><a href="' + data.article.ref_id + '"><i class="fa fa-external-link"></i></a></li>';
	atcl += '</ul>';
	atcl += '</div>';
	atcl += '</div>';
	atcl += '</div>';
	atcl += '</div>';
	
	return atcl;
}



























var left_count = 0;

function post(event) {
  var contentArea = document.querySelector("#postContent");
  var content = contentArea.value;

  if (event !== undefined)
    event.preventDefault();

  // 트윗 가능한 조건이면 트윗
  if ((content.trim().length !== 0) && (content.trim().length <= 140)
  ) {
	  // ajax call
	  $.ajax("../timeline_article_post.box", {
			data: {
				"cont" : content.trim()
			}
	  });
  } else {
    alert("길이가 부적합합니다.");
  }

  contentArea.value = "";
};


function onTestChange(event) {
  if ((event.keyCode == 13) && event.ctrlKey) {
    post();
  }
}