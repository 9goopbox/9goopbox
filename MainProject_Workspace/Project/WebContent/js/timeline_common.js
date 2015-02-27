/**
 * timeline_common for common works
 */

// tl 상단에 삽입
function tlInsert(parent_obj) {
	//$(parent_obj).
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
(select cont,date,kind,ref_id,head_id,attach_id from department)
/**
 * 
 * @param artDat
 * @returns
 */
function makeArticle(artDat) {
	var atcl = "";
	atcl += "<>"
}