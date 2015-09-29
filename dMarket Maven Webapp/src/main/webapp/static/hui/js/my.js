/**
 * 
 */
function jumpPage(page,totalPage,pageSize){
	if(page > totalPage){
		page = 1;
	}
	$("#page").val(page);
	$("#pageSize").val(pageSize);
	$("#listForm").submit();
}


