/**
 * 2012-09-12三级分类设置添加。 
 */

var commodityClassname1,commodityClassname2,commodityClassname3,commodityClassNum1,commodityClassNum2,commodityClassNum3;
var temp = "";
var rows = 0;

/**
 * 2012-09-12添加。 添加品类以及区域信息
 */
function getRowData(){
	if($("#categoryNum").val() == 0)
	{
		Commons.showInfo("请先选择商品品类",222);
		return ;
	}
	var rowData = new Array();
	temp = "";
	commodityClassname1=$("#commodityClass1").find("option:selected").text();
	commodityClassNum1=$("#commodityClass1").find("option:selected").val();
	commodityClassname2=$("#commodityClass2").find("option:selected").text();
	commodityClassNum2=$("#commodityClass2").find("option:selected").val();
	commodityClassname3=$("#commodityClass3").find("option:selected").text();
	commodityClassNum3=$("#commodityClass3").find("option:selected").val();
	if(commodityClassname1 == "请选择" || commodityClassname2 == "请选择" || commodityClassname3 == "请选择")
	{
		Commons.showError("存在三级分类没有选择,不能添加", 222);
		return ;
	}
	temp = temp + commodityClassname1 + commodityClassNum1 + commodityClassname2 + commodityClassNum2 + commodityClassname3 + commodityClassNum3 + "删除";
	rowData.push(commodityClassname1);
	rowData.push(commodityClassNum1);
	rowData.push(commodityClassname2);
	rowData.push(commodityClassNum2);
	rowData.push(commodityClassname3);
	rowData.push(commodityClassNum3);
	rowData.push("<a href='#' onclick='delRow(" + (rows + 1) + ")'>删除</a>");
	addRow(rowData);
	rows++;
}

/**
 * 2012-09-12 为绘制三级分类记录表格准备数据并验证数据是否冲突
 */
function addRow(paraArray) {
	var tr = makeTrHtml(paraArray);
	for(var j=1; j<=rows; j++)
	{
		var tt = $("#tr"+j+" td").text();
		if(temp==tt)
		{
			Commons.showError("三级分类记录已存在,添加冲突", 222);
			return ;
		}
	}
	$("#app").append(tr);
}

/**
 * 2012-09-12 绘制三级分类记录表格
 */
function makeTrHtml(paraArray) {
	var trHtml = "<tr id='tr" + (rows + 1) + "'>";
	for ( var i = 0; i < paraArray.length; i++) {
		if( i%2 ==0 )
		{
			trHtml += "<td>";
		}
		else
		{
			trHtml += "<td style='display:none;'>";
		}
		trHtml += paraArray[i];
		trHtml += "</td>";
	}
	trHtml += "</tr>";
	return trHtml;
}
/**
 * 2012-09-13删除表格行
 * 
 * @param id
 */
function delRow(id) {
	var t = "#tr" + id;
	$(t).remove();
}