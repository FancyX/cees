$(function () {
	// 初始化
	loadGrid();
	var msg = $('#msg').val();
	if (msg != '') {
		Commons.showWarn(msg);
		ordertableload();
	}
	$('#importWindow').jqm({
		closeClass: 'jqmClose',
		overlayClass: 'whiteOverlay',
		movable: true
	});
	//绑定导入按钮单击事件
	$('#importData').click(function () {
		importData();
	});
	// 查询一级分类
	jQuery.ajax({
		type: 'POST',
		url: '/oldoroducttask/queryAttributebycategory.json',
		data: {
			fatherId: 0
		},
		success: function (data) {
			$("#categoryOne").prepend("<option value=''>请选择</option>");
			$("#categoryTwo").prepend("<option value=''>请选择</option>");
			$("#categoryThree").prepend("<option value=''>请选择</option>");
			if ('' != data && null != data) {
				for (var i = 0; i < data.length; i++) {
					$("#categoryOne").append(
						"<option value='" + data[i].productSortId + "'>"
							+ data[i].name + "</option>");
				}
			}
		}
	});
	// 查询配送中心信息
	jQuery.ajax({
		type: 'POST',
		url: '/oldoroducttask/queryDeliverCenters.json',

		success: function (data) {
			$("#delivercentercode").prepend("<option value=''>请选择</option>");
			$("#storeid").prepend("<option value=''>请选择</option>");
			if ('' != data && null != data) {
				for (var i = 0; i < data.length; i++) {
					$("#delivercentercode").append(
						"<option value='" + data[i].delivercentercode
							+ "'>" + data[i].delivercentername
							+ "</option>");
				}
			}
		}
	});

	$('input:radio[name=flag]').click(function(){
		//this.blur();
		//this.focus();
	});
	$('input:radio[name=flag]').change(function(){
		if($(this).val() == 1){
			$('#categoryOne').attr('disabled',false);
			$('#categoryTwo').attr('disabled',false);
			$('#categoryThree').attr('disabled',false);
			$('#goodsCode').attr('disabled',true);
			$('#goodsCode').val('');
		}
		if($(this).val() == 2){
			$('#goodsCode').attr('disabled',false);
			$('#categoryOne').attr('disabled',true);
			$('#categoryTwo').attr('disabled',true);
			$('#categoryThree').attr('disabled',true);
			$('#categoryOne').val('');
			queryAttributebycategoryTwo('');
		}

	});

});



// 老品采集任务创建
function addTaskInfo() {
	var delivercentercode = $('#delivercentercode').val();
	var delivercentername = $('#delivercentercode  option:selected').text();
	//获取UUID的redisKey
	var redesKey = $('#redesKey').val();
	if ('' == delivercentercode) {
		Commons.showWarn("请选择配送中心!");
		return false;
	}
	var rowData = $('#ordertable').datagrid('getRows');
	if (rowData.length == 0) {
		Commons.showWarn("请添加商品!");
		return false;
	}
	var rndJqmId = 'addTaskInfo';
	jqm.loading({
		jqmId: rndJqmId,
		size: 48,
		content: ''
	});
	jQuery.ajax({
		type: 'POST',
		url: '/gatherattributedownload/addTaskInfo.json',
		data: {
			"delivercentercode": delivercentercode,
			"delivercentername": delivercentername,
			"redesKey": redesKey

		},
		success: function (data) {
			if (data) {
				Commons.showSuccess("创建成功！", function () {
					ordertableload();

				});
			}
			$('#' + rndJqmId).jqmHide();
		}
	});
}
// 根据三级品类查询商品信息（二级）
function queryAttributebycategoryTwo(productSortId) {
	$("#categoryTwo option[value!='']").remove();
	$("#categoryThree option[value!='']").remove();
	$("#goodsCode").val('');
	if (productSortId == "") {
		return;
	}
	jQuery.ajax({
		type: 'POST',
		url: '/oldoroducttask/queryAttributebycategory.json',
		data: {
			"fatherId": productSortId
		},
		success: function (data) {
			if ('' != data && null != data) {
				for (var i = 0; i < data.length; i++) {
					$("#categoryTwo").append(
						"<option value='" + data[i].productSortId + "'>"
							+ data[i].name + "</option>");
				}
			}
		}
	});
}
// 根据三级品类查询商品信息（三级）
function queryAttributebycategoryThree(productSortId) {
	$("#categoryThree option[value!='']").remove();
	if (productSortId == "") {
		return;
	}
	jQuery.ajax({
		type: 'POST',
		url: '/oldoroducttask/queryAttributebycategory.json',
		data: {
			"fatherId": productSortId
		},
		success: function (data) {
			if ('' != data && null != data) {
				for (var i = 0; i < data.length; i++) {
					$("#categoryThree").append(
						"<option value='" + data[i].productSortId + "'>"
							+ data[i].name + "</option>");
				}
			}
		}
	});
}

// 根据三级或SKU地址查询商品信息
function addProduct() {
	var flag = $('input[name=flag]').val();
	//获取三级分类信息
	var categoryThree = $('#categoryThree').val();
	//获取商品编号信息
	var goodsCode = $('#goodsCode').val();

	var attributeName = $('#attributeName').val() == -1?'':$('#attributeName').val();
	//获取UUID的redisKey
	var redesKey = $('#redesKey').val();
	//去空格操作
	goodsCode = $.trim(goodsCode);
	var isNotSku = 0;
	//如果商品编号不为空则按商品编号查询
	if (goodsCode != '' && goodsCode != null) {
		var reg = /^[a-zA-Z0-9]+(,[a-zA-Z0-9]+)*$/;
		if(reg.test(goodsCode) && goodsCode.split(',').length <= 100){
			isNotSku = 0;
		}else{
			Commons.showError('商品编号格式错误!');
			return false;
		}
	} else if (categoryThree != '' && categoryThree != null) {
		isNotSku = 1;
	} else if($('input[name="flag"]:checked').val() == 2 && (goodsCode == '' || goodsCode == null)){
		Commons.showError('请输入商家编码!');
		return false;
	} else {
		Commons.showError('请选择添加条件！');
		return false;
	}
	if($('#attributeType').val() !=5 && (attributeName == '' || attributeName == null)){
		Commons.showError('请选择属性名称!');
		return false;
	}

	jQuery.ajax({
		type: 'POST',
		data: {
			"redesKey": redesKey
		},
		url: '/gatherattributedownload/toEmpty.json',

		success: function (data) {
			if (data > 0) {
				ordertableload();
			}
		}
	});
	jQuery.ajax({
		type: 'POST',
		async: false,
		url: '/gatherattributedownload/addProduct.json',
		data: {
			"sku": goodsCode,
			"thrLevelId": categoryThree,
			"redesKey": redesKey,
			"attributeType":$('#attributeType').val(),
			"attributeCode":attributeName,
			"attributeName":$('#attributeName option:selected').text()
		},
		success: function (data) {
			if ('' != data && null != data) {
				$("#redesKey").val(data.redesKey);
				ordertableload();
			}
		}, error: function (data) {
			alert(data.redesKey);
		}
	});
}
//重新加载datagrid列表，公用方法
function ordertableload() {
	var queryParams = $('#ordertable').datagrid('options').queryParams;
	queryParams.redesKey = $('#redesKey').val();
	$('#ordertable').datagrid('options').url = '/gatherattributedownload/getRedisGoods.json';
	$("#ordertable").datagrid('load');
//	$('#ordertable').datagrid({
//		onLoadSuccess: function (data) {
//			var rows = $("#ordertable").datagrid("getRows");
//			if (rows.length == 0) {
//				Commons.showError("商品不存在或商品为新品!");
//			}
//		}
//	});
}

/**
 * 打开导入窗口
 */
function openImportWindow() {
	$("#importForm")[0].reset();
	$("#importForm").validate(formValidator).resetForm();
	$('#importWindow').jqmShow();
}
/**
 * 导入文件
 */
function importData() {
	var validator = $('#importForm').validate(formValidator);
	if (validator.form()) {
		start();
		$("#importForm").submit();
	}
}
/**
 * 启动进度条
 */
function start() {
	$('#progressbar_tr').css('display', '');
	var value = $('#progressbar').progressbar('getValue');
	if (value < 100) {
		value += Math.floor(Math.random() * 10);
		$('#progressbar').progressbar('setValue', value);
		setTimeout(arguments.callee, 2000);
	}
}
// 删除记录
function toDelete(id) {
	var row = $('#ordertable').datagrid('getSelected');
	//获取UUID的redisKey
	var redesKey = $('#redesKey').val();
	jQuery.ajax({
		type: 'POST',
		data: {
			"id": id,
			"redesKey": redesKey
		},
		url: '/gatherattributedownload/toDelete.json',

		success: function (data) {
			if ('' != data && null != data) {
				$("#redesKey").val(data.redesKey);
				if (data.fla == true) {
					Commons.showSuccess("删除成功！", function () {
						ordertableload();
					});
				} else {
					Commons.showError("删除失败!");
				}
			} else {
				Commons.showError("删除失败!");
			}
		}
	});
}
// 清空列表记录
function toEmpty() {
	//获取UUID的redisKey
	var redesKey = $('#redesKey').val();
	jQuery.ajax({
		type: 'POST',
		data: {
			"redesKey": redesKey
		},
		url: '/gatherattributedownload/toEmpty.json',

		success: function (data) {
			if (data > 0) {
				Commons.showSuccess("清空成功！", function () {
					ordertableload();
				});
			} else {
				Commons.showError("没有要清理的数据!");
			}

		},
		error: function () {
			Commons.showError("清空失败！");
		}
	});
}
//监听回车键
function doKeyDown() {
	if (event.keyCode == 13) {
		addProduct();
	}
}
/**
 * 导出老品采集任务模板
 */
function exportOldExcelTemplate() {
	var formObj = document.forms[0];
	var action = formObj.action;
	//formObj.action = "/oldoroducttask/exportExcelTemplate";
	formObj.action = "/gatherattributeset/downloadImportTemplate";
	formObj.submit();
	formObj.action = action;
}

// 列表初始化
function loadGrid() {
	$('#ordertable')
		.datagrid(
		{
			width: 960,
			height: 260,
			nowrap: true,
			striped: true,
			collapsible: true,
			url: null,
			method: 'post',
			singleSelect: true,
			sortName: 'returnTime',
			sortOrder: 'desc',
			remoteSort: true,
			idField: 'id',
			loadMsg: '数据加载中......',
			columns: [
				[
					{
						field: 'sku',
						title: '商品编码',
						width: 120,
						editor: 'text'
					},
					{
						field: 'goodsName',
						title: '商品名称',
						width: 400,
						editor: 'text'
					},
					{
						field: 'attributeName',
						title: '属性名称',
						width: 200,
						editor: 'text'
					},
					{
						field: '变动记录',
						title: '操作',
						width: 110,
						formatter: function (value, rowData, rowIndex) {
							// function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
							return "<a href='javascript:toDelete(\"" + rowData.id + "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text' style='padding-left: 20px;'>"
								+ "删除" + "</span></span></a>";
						}
					}
				]
			],
			pagination: true,
			rownumbers: true
		});
}

function queryAttributeByCategory(attributeType){

	if(attributeType<0){
		$("#attributeName").html("");
		$("#attributeName").append("<option value='-1'>请选择</option>");
		return;
	}

	if(attributeType == 0){
		$("#attributeName").html("");
		$("#attributeName").append("<option value='-1'>请选择</option><option value='Length'>长</option><option value='Width'>宽</option><option value='Height'>高</option><option value='Weigth'>重量</option>");
		return;
	}

	jQuery.ajax({
		type: 'POST',
		url: '/attributeuse/queryAttribute.json',
		data: {
			attributeType: attributeType,
			enable: 1
		},
		success: function (data) {
			$("#attributeName").html("");
			$("#attributeName").append("<option value='-1'>请选择</option>");
			if ('' != data && null != data) {
				for (var i = 0; i < data.length; i++) {
					$("#attributeName").append(
						"<option value='" + data[i].attributeCode + "'>"
						+ data[i].attributeName + "</option>");
				}
			}
		}
	});
}