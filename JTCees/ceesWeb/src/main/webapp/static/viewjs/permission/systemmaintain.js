$(function() {
	loadGrid();
	$('#uploadshow').jqm({
		closeClass : 'jqmClose',
		overlayClass : 'whiteOverlay',
		movable : true
	});
   $("#salesClerk").bind("change", clearSKU);
    $("#showType1").bind("change", clearSKU);
    $("#showType2").bind("change", clearSKU);
	radioFun();
});


function callback(skus) {
	var total = skus.total;
	$("#cancelOE").trigger("click");
	if(!total) {
		var file = $("#importExcel");
		var cloneFile = file.clone();
		cloneFile.val('');
		file.after(cloneFile).remove();
		Commons.showError('请选择有效的Excel文件');
		return;
	} 
	skus = skus.data;
	var array = [];
	for(var i = 0 ,l = skus.length; i < l; i++) {
		array.push({sku:skus[i][0]});
	}
	var gridData = $('#ordertable').datagrid("getData");
	var rows = gridData.rows;

	//计算成功导入条数 去列表和excel中重复数据
	var clone = array.slice();
	var l = clone.length;
	while(l--) {
		var item = clone[l];
		for(var i = 0 ; i < rows.length;i++) {
			if(item.sku == rows[i].sku) {
				clone.splice(l,1);
				break;
			}
		}
	}
	var file = $("#importExcel");
	var cloneFile = file.clone();
	cloneFile.val('');
	file.after(cloneFile).remove();
	Commons.showSuccess("文件共"+total+"条数据,成功导入"+clone.length+"条");
	$('#ordertable').datagrid("loadData",clone.concat(rows));
}
/**
 * 清空SKU列表
 */
function clearSKU(){
    var rows = $('#ordertable').datagrid('getRows');
    while(rows.length > 0){//每次删掉第一行，删完为止
        $('#ordertable').datagrid('deleteRow', 0);
    }
}

// 列表初始化
function loadGrid() {
	$('#ordertable')
			.datagrid(
					{
						width : 500,
						height : 210,
						nowrap : true,
						striped : true,
						collapsible : true,
						url : null,
						method : 'post',
						singleSelect : true,
						sortName : 'returnTime',
						sortOrder : 'desc',
						remoteSort : true,
						idField : 'id',
						loadMsg : '数据加载中......',
						columns : [ [
								{
									field : 'sku',
									title : 'SKU',
									width : 313
								},
								{
									field : '变动记录',
									title : '操作',
									width : 120,
									formatter : function(value, rowData,
											rowIndex) {
										// function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
										return "<a href='javascript:toDelete()' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-edit' style='padding-left: 20px;'>"
												+ "删除" + "</span></span></a>";
									}
								} ] ],
						pagination : false,
						rownumbers : true
					});
}

function trim(str) { // 删除左右两端的空格
	return str.replace(/(^\s*)|(\s*$)/g, "");
}

// 添加一个sku到列表
function addSKU() {
	var skuValue = $("#skuValue").val();
	skuValue = trim(skuValue);
	if (skuValue == null || skuValue == "") {
		Commons.showWarn("请输入SKU值!");
		$("#skuValue").val('');
		return;
	}
	if (isChina(skuValue)) {
		Commons.showWarn("不支持汉字!");
		$("#skuValue").val('');
		return;
	}
	// 判断是否重复
	var rowData = $('#ordertable').datagrid('getRows');
	if (rowData.length > 0) {
		for ( var i = 0; i < rowData.length; i++) {
			if (skuValue == rowData[i].sku) {
				Commons.showError("该SKU已经添加!");
				return false;
			}
		}
	}
	
	$('#ordertable').datagrid('insertRow', {
		index : 0,
		row : {
			sku : skuValue
		}
	});	
}

// 删除记录
function toDelete() {
	var row = $('#ordertable').datagrid('getSelected');
	var index = $('#ordertable').datagrid('getRowIndex', row);
	$('#ordertable').datagrid('deleteRow', index);
}

// 从列表里面删除sku
function deleteSKU(deleteSkuValue) {

	var value = deleteSkuValue.getAttribute("id");
	$("#" + value + "").remove();
}

// 单选按钮操作
function radioFun() {
	var showType = $("input[name='showType']:checked").val();
	if (showType == 0) {
		$('#table').attr("style", "display:none");
		$('#skuSet').attr("style", "display:none");
	} else {
		$('#table').attr("style", "display:");
		$('#skuSet').attr("style", "display:");
	}
}

// 提交表单
function subForm() {
   
	var type = $("#salesClerk").val();
	var skuValue = "";
	var rowData = $('#ordertable').datagrid('getRows');
	if (rowData.length >= 1) {
		// 授权JSON字符串拼接
		skuValue = '';
		for ( var i = 0; i < rowData.length; i++) {
			skuValue += rowData[i].sku+",";
		}
		skuValue = skuValue.substring(0, skuValue
				.lastIndexOf(','));
	}

	if(!$.trim(skuValue)) {
		Commons.showWarn("请添加sku");
		return false;
	}
	jQuery.ajax({
		type : 'POST',
		async : false,
		data : {
			type : type,
			skuValue : skuValue
		},
		url : '/permission/downLoadData.json',
		success : function(data) {
			if (data == "true") {
				Commons.showSuccess("报文下发成功  ！");
				$("#skuValue").val("");
			}else if(data == "false"){
				 Commons.showWarn("报文下发失败  ！");
				$("#skuValue").val("");
			} else if(data.stackTrace) {
				Commons.showWarn("报文下发异常  ！");
			}
		}
	});
}

// 弹出导入框
function showImport() {
	$("#uploadshow").jqmShow();
}

// 导入开始
function toDoImport() {
	if (null == $("#importExcel").val() || '' == $("#importExcel").val()) {
		return false;
	} else if ($("#importExcel").val().substring(
			$("#importExcel").val().lastIndexOf(".") + 1) == "xlsx"
			|| $("#importExcel").val().substring(
					$("#importExcel").val().lastIndexOf(".") + 1) == "xls") {

		$("#importForm").attr("target","iframe").submit();
		/*
		jqm.loading({
			size : 48,
			content : '数据导入中...'
		});
		*/
		//var obj = document.getElementById('cancelOE');
		//obj.click();
	} else {
		Commons.showError('请选择有效的Excel文件');
	}
}
function isChina(s) // 判断字符是否是中文字符
{
	var patrn = /^[\u4E00-\u9FA5]+$/;
	if (!patrn.test(s)) {
		return false;
	} else {
		return true;
	}
}

/**
 * 导出模板
 */
function exportExcelTemplate()
{
    var formObj =document.forms[0];
    var action = formObj.action;
    formObj.action="/permission/exportExcelTemplate";
    formObj.submit();
    formObj.action=action;
}