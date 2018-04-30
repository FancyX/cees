$(function() {
	// 初始化
	loadGrid();
    $('#ordertable').datagrid('options').url = '/oldoroducttask/queryGoodsInfobyReLoad.json';
    //重新加载datagrid的数据
    $("#ordertable").datagrid('load');
	// 获取初始提示
	var msg = $('#msg').val();
	if (msg == 'importSuccess') {
		Commons.showSuccess("上传成功！");
        $('#ordertable').datagrid('options').url = '/oldoroducttask/queryGoodsInfobyReLoad.json';
        //重新加载datagrid的数据
        $("#ordertable").datagrid('load');
	} else if (msg != '') {
		Commons.showWarn(msg);
        $('#ordertable').datagrid('options').url = '/oldoroducttask/queryGoodsInfobyReLoad.json';
        //重新加载datagrid的数据
        $("#ordertable").datagrid('load');
	}
//	var excelData = $('#excelData').val();
//	var attrContJsonStr = $('#attrContJsonStr').val();
//	if ('' != excelData) {
//		excelData = stringToJson(excelData);
//		$.each(excelData, function(index, content) {
//			$('#ordertable').datagrid('insertRow', {
//				index : 0,
//				row : {
//					goodsCode : content.goodsCode,
//					goodsName : content.goodsName
//				}
//			});
//		});
//	}
//	if ('' != attrContJsonStr) {
//		attrContJsonStr = stringToJson(attrContJsonStr);
//		$.each(attrContJsonStr, function(index, content) {
//			$('#ordertable').datagrid('insertRow', {
//				index : 0,
//				row : {
//					goodsCode : content.goodsCode,
//					goodsName : content.goodsName
//				}
//			});
//		});
//	}

	$('#uploadshow').jqm({
		closeClass : 'jqmClose',
		overlayClass : 'whiteOverlay',
		movable : true
	});
	// 查询一级分类
	jQuery.ajax({
		type : 'POST',
		url : '/oldoroducttask/queryAttributebycategory.json',
        data : {
            fatherId : 0
        },
		success : function(data) {
			$("#categoryOne").prepend("<option value=''>请选择</option>");
			$("#categoryTwo").prepend("<option value=''>请选择</option>");
			$("#categoryThree").prepend("<option value=''>请选择</option>");
			if ('' != data && null != data) {
				for ( var i = 0; i < data.length; i++) {
					$("#categoryOne").append(
							"<option value='" + data[i].productSortId + "'>"
									+ data[i].name + "</option>");
				}
			}
		}
	});
	// 查询配送中心信息
	jQuery.ajax({
		type : 'POST',
		url : '/oldoroducttask/queryDeliverCenters.json',

		success : function(data) {
			$("#delivercentercode").prepend("<option value=''>请选择</option>");
			$("#storeid").prepend("<option value=''>请选择</option>");
			if ('' != data && null != data) {
				for ( var i = 0; i < data.length; i++) {
					$("#delivercentercode").append(
							"<option value='" + data[i].delivercentercode
									+ "'>" + data[i].delivercentername
									+ "</option>");
				}
			}
		}
	});

});
// 老品采集任务创建
function addTaskInfo() {
	var storeid = $('#storeid').val();
	var delivercentercode = $('#delivercentercode').val();
	var storename = $("#storeid").find("option:selected").text();
	var delivercentername = $("#delivercentercode").find("option:selected").text();
	if ('' == storeid) {
		Commons.showWarn("请选择配送中心和采集库房!");
		return false;
	}
	var rowData = $('#ordertable').datagrid('getRows');
	if (rowData.length == 0) {
		Commons.showWarn("请添加商品!");
		return false;
	}
	// 授权JSON字符串拼接
//	var attrContJsonStr = '';
//	for ( var i = 0; i < rowData.length; i++) {
//		attrContJsonStr += '{"goodsCode":"' + rowData[i].goodsCode
//				+ '","goodsName":"' + rowData[i].goodsName + '"}_';
//	}
//	attrContJsonStr = attrContJsonStr.substring(0, attrContJsonStr
//			.lastIndexOf('_'));
    var rndJqmId = 'addTaskLoading';
    jqm.loading({
        jqmId: rndJqmId,
        size: 48,
        content: ''
    });
	jQuery.ajax({
		type : 'POST',
		url : '/oldoroducttask/addTaskInfo.json',
		data : {
			"warehouseId" : storeid,
			"warehouseName" : storename,
			"goodsNum" : rowData.length,
			"delivercentercode":delivercentercode,
			"delivercentername":delivercentername
//			"jsonStr" : attrContJsonStr
		},
		success : function(data) {
            var goodsCount = data.gatherGoods;
            var addResult = data.addResult;
            var noCheck = data.noCheck;
            var addResultInfo = data.addResultInfo;
            if (addResult) {
                if(data.resultForSD){
                    Commons.showInfo("创建成功，但下传接口异常！");
                    $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                    //重新加载datagrid的数据
                    $("#ordertable").datagrid('load');
                }else if(data.resultFor != 1){
                    Commons.showInfo("创建成功，但下传失败！");
                    $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                    //重新加载datagrid的数据
                    $("#ordertable").datagrid('load');
                }else{
                    if(null != goodsCount && goodsCount>0&& null !=noCheck&&noCheck>0){
                        var showMsg = "创建成功，但有"+goodsCount+"条商品已在采集任务中，有"+noCheck+"条商品未验证!";
                        Commons.showSuccess(showMsg);
                        $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                        //重新加载datagrid的数据
                        $("#ordertable").datagrid('load');
                    } else if(goodsCount != null &&  goodsCount>0)
                    {
                        var showMsg = "创建成功，但有"+goodsCount+"条商品已在采集任务中";
                        Commons.showSuccess(showMsg);
                        $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                        //重新加载datagrid的数据
                        $("#ordertable").datagrid('load');
                    }else if(null != noCheck && noCheck>0){
                        var showMsg = "创建成功，但有"+noCheck+"条商品未验证";
                        Commons.showSuccess(showMsg);
                        $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                        //重新加载datagrid的数据
                        $("#ordertable").datagrid('load');
                    }
                    else{
                        Commons.showSuccess("创建成功！");
                        $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                        //重新加载datagrid的数据
                        $("#ordertable").datagrid('load');
                    }
                }
			} else if(goodsCount != null && goodsCount >0) {
                Commons.showError("有"+goodsCount +"条商品已在采集任务中!");
                $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                //重新加载datagrid的数据
                $("#ordertable").datagrid('load');
			}else if(null != noCheck && noCheck>0){
                Commons.showError("有"+noCheck +"条商品没有验证!!");
                $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                //重新加载datagrid的数据
                $("#ordertable").datagrid('load');
            }else if(null!=addResultInfo&&addResultInfo!=''){
                Commons.showError(addResultInfo+"");
                $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                //重新加载datagrid的数据
                $("#ordertable").datagrid('load');
            }else{
                Commons.showError("创建失败！！");
                $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                //重新加载datagrid的数据
                $("#ordertable").datagrid('load');
            }
            $("#" + rndJqmId).jqmHide();
		}
	});
}
// 根据三级品类查询商品信息（二级）
function queryAttributebycategoryTwo(productSortId) {
    $("#categoryTwo option[value!='']").remove();
    $("#categoryThree option[value!='']").remove();
    $("#goodsCode").val('');
    if(productSortId == "")
    {
        return;
    }
	jQuery.ajax({
		type : 'POST',
		url : '/oldoroducttask/queryAttributebycategory.json',
		data : {
			"fatherId" : productSortId
		},
		success : function(data) {
			if ('' != data && null != data) {
				for ( var i = 0; i < data.length; i++) {
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
    if(productSortId =="")
    {
        return;
    }
	jQuery.ajax({
		type : 'POST',
		url : '/oldoroducttask/queryAttributebycategory.json',
		data : {
			"fatherId" : productSortId
		},
		success : function(data) {
			if ('' != data && null != data) {
				for ( var i = 0; i < data.length; i++) {
					$("#categoryThree").append(
							"<option value='" + data[i].productSortId + "'>"
									+ data[i].name + "</option>");
				}
			}
		}
	});
}
// 查询库房信息
function queryStores(delivercentercode) {
	if ('' == delivercentercode) {
		$("#storeid")[0].options.length = 0;
		$("#storeid").prepend("<option value=''>请选择</option>");
		return;
	}
	jQuery.ajax({
		type : 'POST',
		url : '/oldoroducttask/queryStores.json',
		data : {
			"delivercentercode" : delivercentercode
		},
		success : function(data) {
			if ('' != data && null != data) {
				$("#storeid")[0].options.length = 0;
				$("#storeid").prepend("<option value=''>请选择</option>");
				for ( var i = 0; i < data.length; i++) {
					$("#storeid").append(
							"<option value='" + data[i].storeid + "'>"
									+ data[i].storename + "</option>");
				}
			}
		}
	});
}
// 字符串和json转换
function stringToJson(stringValue) {
	eval("var theJsonValue = " + stringValue);
	return theJsonValue;
}
// 列表初始化
function loadGrid() {
	$('#ordertable')
			.datagrid(
					{
						width : 560,
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
									field : 'goodsCode',
									title : '商品编码',
									width : 120,
									editor : 'text'
								},
								{
									field : 'goodsName',
									title : '商品名称',
									width : 250,
									editor : 'text'
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
						pagination : true,
						rownumbers : true
					});
}
// 根据三级地址查询商品信息
function addProduct() {
	var categoryOne = $('#categoryOne').val();
	var categoryTwo = $('#categoryTwo').val();
	var categoryThree = $('#categoryThree').val();
	var goodsCode = $('#goodsCode').val();
	goodsCode = $.trim(goodsCode);
	if (goodsCode == '') {
		if (categoryOne == '' || categoryTwo == '' || categoryThree == '') {
			Commons.showWarn("请将品类信息填写完全！");
		} else {
			jQuery.ajax({
				type : 'POST',
				data : {
					"groupno" : categoryThree
				},
				url : '/oldoroducttask/queryGoodsInfobycategory.json',

				success : function(data) {
					if (data != '' || data != null) {
//						var num=0;
//						for ( var i = 0; i < data.length; i++) {
//							// 判断是否重复
//							var exit = false;
//							var rowData = $('#ordertable').datagrid('getRows');
//							if (rowData.length >= 1) {
//								for ( var j = 0; j < rowData.length; j++) {
//									if (data[i].goodsCode == rowData[j].goodsCode) {
//										exit = true;
//										break;
//									}
//								}
//							}
//							if(exit) continue;
//							$('#ordertable').datagrid('insertRow', {
//								index : 0,
//								row : {
//									goodsCode : data[i].goodsCode,
//									goodsName : data[i].goodsName
//								}
//							});
//						}
                        $('#ordertable').datagrid('options').url='/oldoroducttask/queryGoodsInfobyReLoad.json';
                        //重新加载datagrid的数据
                        $("#ordertable").datagrid('load');
					} else {
                        Commons.showError("添加失败！");
					}
				}
			});
		}
	} else {
		if (categoryOne != '' || categoryTwo != '' || categoryThree != '') {
			$('#categoryOne').val('');
			$('#categoryTwo').val('');
			$('#categoryThree').val('');
		}
		// 判断是否重复
//		var rowData = $('#ordertable').datagrid('getRows');
//		if (rowData.length >= 1) {
//			for ( var i = 0; i < rowData.length; i++) {
//				rowData[i].conten;
//				if (goodsCode == rowData[i].goodsCode) {
//					Commons.showError("该商品已经添加!");
//					return false;
//				}
//			}
//		}
		jQuery.ajax({
			type : 'POST',
			data : {
				"sku" : goodsCode
			},
			url : '/oldoroducttask/querypruductinfobySKU.json',

			success : function(data) {
				if ('' != data && null != data) {
                    if (data==true) {
                        $('#ordertable').datagrid('options').url = '/oldoroducttask/queryGoodsInfobyReLoad.json';
                        //重新加载datagrid的数据
                        $("#ordertable").datagrid('load');
                    }else{
                        Commons.showError("商品编码不存在或商品为新品!");
                    }
				} else {
					Commons.showError("商品编码不存在或商品为新品!");
				}
			}
		});
	}
}
// 弹出上传窗口
function upload() {
	$("#uploadshow").jqmShow();
}
// 导入
function toDoImport() {
	if (null == $("#importExcel").val() || '' == $("#importExcel").val()) {
		return false;
	} else if ($("#importExcel").val().substring(
			$("#importExcel").val().lastIndexOf(".") + 1) == "xlsx"
			|| $("#importExcel").val().substring(
					$("#importExcel").val().lastIndexOf(".") + 1) == "xls") {
		var rowData = $('#ordertable').datagrid('getRows');
		var attrContJsonStr = "";
		if (rowData.length >= 1) {
			// 授权JSON字符串拼接
			attrContJsonStr = '';
			for ( var i = 0; i < rowData.length; i++) {
				attrContJsonStr += '{"goodsCode":"' + rowData[i].goodsCode
						+ '","goodsName":"' + rowData[i].goodsName + '"}_';
			}
			attrContJsonStr = attrContJsonStr.substring(0, attrContJsonStr
					.lastIndexOf('_'));
		}
		$("#attrContJsonStrFile").val(attrContJsonStr);
		$("#importForm").submit();
		jqm.loading({
			size : 200,
			content : '数据导入中...',
            overlay : 10,
            w : 200
		});
		var obj = document.getElementById('cancelOE');
		obj.click();
	} else {
		Commons.showError('请选择有效的Excel文件');
	}
}
// 删除记录
function toDelete() {
	var row = $('#ordertable').datagrid('getSelected');
    jQuery.ajax({
        type : 'POST',
        data : {
            "sku" : row.goodsCode
        },
        url : '/oldoroducttask/delete.json',

        success : function(data) {
            if ('' != data && null != data) {
                if (data==true) {
                    $('#ordertable').datagrid('options').url = '/oldoroducttask/queryGoodsInfobyReLoad.json';
                    //重新加载datagrid的数据
                    $("#ordertable").datagrid('load');
                }else{
                    Commons.showError("删除失败!");
                }
            } else {
                Commons.showError("删除失败!");
            }
        }
    });
}

//监听回车键
function doKeyDown(){
     if (event.keyCode ==13)
     {
      addProduct();
     }
}
/**
 * 导出老品采集任务模板
 */
function exportOldExcelTemplate()
{
    var formObj =document.forms[0];
    var action = formObj.action;
    formObj.action="/oldoroducttask/exportExcelTemplate";
    formObj.submit();
    formObj.action=action;
}
//清空mongo
function cleanMongo(){
    jQuery.ajax({
        type : 'POST',
        url : '/oldoroducttask/cleanMongo.json',
        data : {},
        success : function(data) {
            if ('' != data && null != data) {
                if (data==true) {
                    Commons.showSuccess("清空成功！");
                    $('#ordertable').datagrid('options').url = '/oldoroducttask/queryGoodsInfobyReLoad.json';
                    //重新加载datagrid的数据
                    $("#ordertable").datagrid('load');
                }else{
                    Commons.showError("清空失败!");
                }
            } else {
                Commons.showError("清空失败!2");
            }
        }
    });
}