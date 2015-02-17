/***
 * 모든 테이블과 해당 테이블에 포함된 컬럼들에 대해 특정 동작을 수행합니다.
 */
select(function(it){
	return it.get("type") == "table";
}).each(function(eachTable){
	// TODO 이곳에 각 테이블(eachTable)의 동작을 기술합니다.
	
	
	eachTable.select(function(it){
		return (it.get("type") == "column" &&
			it.get("is-primary-key") &&
			(it.get("data-type") == "INTEGER")
		) ;
	}).each(function(eachCol){
		// TODO 이곳에 각 컬럼(eachCol)의 동작을 지정합니다.
		//console.log(eachCol.get("logical-name"));
		if (!eachCol.get("is-foreign-key"))
			eachCol.set("default-value", eachCol.get("table").get("physical-name")+"_sequence.nextVal");
		else
			eachCol.set("default-value", null);
	});
});