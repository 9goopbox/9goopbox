/***
 * 사용하지 말 것 (기본값 안 쓸 것임 - 에러남
 */
select(function(it){
	return it.get("type") == "table";
}).each(function(eachTable){
	// TODO 이곳에 각 테이블(eachTable)의 동작을 기술합니다.
	
	eachTable.select(function(it){
		return (
		(it.get("type") == "column") &&
		(it.get("is-primary-key") == true) &&
		(it.get("data-type") == "INTEGER")
		);
	}).each(function(eachCol){
		// TODO 이곳에 각 컬럼(eachCol)의 동작을 지정합니다.
		//console.log(eachTable.get("logical-name")+ " :: " + eachCol.get("logical-name") + " :: " + eachCol.get("is-foreign-key"));
		if (eachCol.get("is-foreign-key") != true){
			eachCol.set("default-value", eachCol.get("table").get("physical-name") + "_sequence.nextVal");
			eachCol.set("default-value", null);
		} else {
			eachCol.set("default-value", null);
		}
	});
});