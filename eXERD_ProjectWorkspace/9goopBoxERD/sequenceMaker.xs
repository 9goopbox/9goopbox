/***
 * 모든 테이블에 대해 특정 동작을 수행합니다.
 */
var create_drop= promptQuestion("drop을 생성하시겠습니까?");

var file = newFile("sequence.txt");
var os = file.getOutputStream();

select(function(it){
	return it.get("type") == "table";
}).each(function(it){
	// TODO 이곳에 각 테이블의 동작을 기술합니다.
	os.println("-- " + it.get("logical-name") + "시퀀스");
	if (create_drop == true)
		os.println("drop sequence " + it.get("physical-name") + "_sequence;");
	
});

select(function(it){
	return it.get("type") == "table";
}).each(function(it){
	// TODO 이곳에 각 테이블의 동작을 기술합니다.
	os.println("-- " + it.get("logical-name") + "시퀀스");

	os.println("create sequence " + it.get("physical-name") + "_sequence");
	os.println("start with 1");
	os.println("increment by 1;");
	os.println();
});