/**
 * VARCHAR 를 VARCHAR2로 바꿈
 */

select(function(it){
	return it.get("type") == "table";
}).each(function(eachTable){
	
	eachTable.select(function(it){
		return (
		(it.get("type") == "column")
		);
	}).each(function(it){
		//log(it.get("data-type"))
		if (it.get("data-type").length() >= 8){
			if (it.get("data-type").substring(0,8).equals("VARCHAR(")) {
				//log("vc2");
				it.set("data-type",it.get("data-type").replace("VARCHAR(", "VARCHAR2("));
			}
		}
		//if (it.get("data-type").substring(7) == "VARCHAR(") {
		///	console.log(it);
		//}
		//it.set("data-type", "VARCHAR2");
	});
	
});