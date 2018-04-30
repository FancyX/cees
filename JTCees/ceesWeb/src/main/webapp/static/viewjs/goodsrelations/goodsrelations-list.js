$(function() {
	// 表格初始化
	loadGrid();
	
	$('#ordertable').datagrid({ 
		rowStyler:function(index,row){   
          if (row.mallFlag == 2){   
            		return 'background-color:red;';   
          }   
     	}   
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
				//默认为值“家用电器”
				$("#categoryOne").val(737);
			}
		}
	});	
	queryAttributebycategoryTwo("737");
});

// 根据三级品类查询商品信息（二级）
function queryAttributebycategoryTwo(productSortId) {
    $("#categoryTwo option[value!='']").remove();
    $("#categoryThree option[value!='']").remove();
    if(productSortId == '' )
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
                //默认为值“大家电”
			    $("#categoryTwo").val("794");
			}
		}
	});
	queryAttributebycategoryThree("794");
	$("#categoryThree").val("");

}
// 根据三级品类查询商品信息（三级）
function queryAttributebycategoryThree(productSortId) {
    $("#categoryThree option[value!='']").remove();
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
					$("#categoryThree").append(
							"<option value='" + data[i].productSortId + "'>"
									+ data[i].name + "</option>");
				}
			}
		}
	});
}
// 列表初始化
function loadGrid() {
	$('#ordertable')
			.datagrid(
					{
						width : 990,
						height : 390,
						nowrap : true,
						striped : true,
						collapsible : true,
						url : null,
						method : 'post',
						sortName : 'returnTime',
						sortOrder : 'desc',
						remoteSort : true,
						idField : 'id',
						loadMsg : '数据加载中......',
						columns : [ [
								{
									field : 'suitId',
									title : '套装ID',
									width : 60
								},
								{
									field : 'stapleGoodsCode',
									title : '主商品编码',
									width : 100
								},
								{
									field : 'stapleGoodsName',
									title : '主商品名称',
									width : 100
								},
								{
									field : 'tiedGoodsCode',
									title : '附商品编码',
									width : 100
								},
								{
									field : 'tiedGoodsName',
									title : '附商品名称',
									width : 100
								},
								{
									field : 'tiedGoodsNum',
									title : '附商品数量',
									width : 100
								},
								{
									field : 'thirdgroupName',
									title : '三级品类',
									width : 100
								},
								{
									field : 'updateName',
									title : '更新人',
									width : 100
								},
								{
									field : 'updateTime',
									title : '更新时间',
									width : 150,
									formatter : function(value, rowData,
											rowIndex) {
										return timeStamp2String(value);
									}
								},
								{
									field : '操作',
									title : '操作',
									width : 140,
									formatter : function(value, rowData,
											rowIndex) {
										//不可修改删除商城系统下发数据
										/*if(rowData.mallFlag == 0){
											// function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
											return "<a href='javascript:toModifyGoodsRelations(\""
													+ rowData.id
													+ "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"
													+ "修改" + "</span></span></a>"
													+"<a href='javascript:delGoodsRelations(\""
													+ rowData.id
													+ "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"
													+ "删除" + "</span></span></a>"
										}else if(rowData.mallFlag == 3){
											return "商城下发冲突数据";
										}*/
										if(rowData.mallFlag == 3){
											return "商城下发冲突数据";
										}else{
											// function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
											return "<a href='javascript:toModifyGoodsRelations(\""
												+ rowData.id
												+ "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"
												+ "修改" + "</span></span></a>"
												+"<a href='javascript:delGoodsRelations(\""
												+ rowData.id
												+ "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"
												+ "删除" + "</span></span></a>"
										}
									}
								} ] ],
						pagination : true,
						rownumbers : true
					});
}
// 时间格式化
function timeStamp2String(time) {
	var datetime = new Date();
	datetime.setTime(time);
	var year = datetime.getFullYear();
	var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1)
			: datetime.getMonth() + 1;
	var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime
			.getDate();
	var hour = datetime.getHours() < 10 ? "0" + datetime.getHours() : datetime
			.getHours();
	var minute = datetime.getMinutes() < 10 ? "0" + datetime.getMinutes()
			: datetime.getMinutes();
	var second = datetime.getSeconds() < 10 ? "0" + datetime.getSeconds()
			: datetime.getSeconds();
	return year + "/" + month + "/" + date + " " + hour + ":" + minute + ":"
			+ second;
}
// 查询商品属性
function queryGoodsRelations() {
	$('#ordertable').datagrid('options').url = '/goodsRelations/queryGoodsRelations.json';
	// 为loadGrid()添加参数
	var queryParams = $('#ordertable').datagrid('options').queryParams;
	queryParams.onegroupNo = $("#categoryOne  option:selected").val();
	queryParams.secondgroupNo = $("#categoryTwo  option:selected").val();
	queryParams.thirdgroupNo = $("#categoryThree  option:selected").val();
	queryParams.goodsCode = $("#goodsCode").val();
	queryParams.updateName = $("#updateName").val();
	// 重新加载datagrid的数据
	$("#ordertable").datagrid('load');
}
// 删除采集属性
function delGoodsRelations(id) {
	if (id == '' || id == null) {
		Commons.showWarn("请选择一条要删除的信息");
	} else {
		jqm
				.confirm({
					w : 400,
					title : '警告',
					type : 'attention',
					content : '<h4>是否确认要删除该条商品主附关系信息</h4>',
					self : self,
					onConfirm : function() {
						jQuery
								.ajax({
									type : 'POST',
									async: false,
									url : '/goodsRelations/delGoodsRelations.json?id='
											+ id,

									success : function(data) {
										if (data) {
											Commons.showSuccess("操作成功！");
											$("#ordertable").datagrid('reload');
										} else {
											Commons.showSuccess("操作失败！");
										}
									},
									error : function() {
										Commons.showError("系统异常！");
									}

								});
					}
				});
	}
}

//新增商品主附关系
function addGoodsRelations() {
	$('#ordertable').datagrid('options').url = '/collectattributeconfig/queryCollectAttributeConfig.json';
	// 为loadGrid()添加参数
	var queryParams = $('#ordertable').datagrid('options').queryParams;
	queryParams.onegroupNo = $("#categoryOne  option:selected").val();
	queryParams.secondgroupNo = $("#categoryTwo  option:selected").val();
	queryParams.thirdgroupNo = $("#categoryThree  option:selected").val();
	// 重新加载datagrid的数据
	$("#ordertable").datagrid('load');
}
//新增商品主附关系
function toAddGoodsRelations(){
    window.location = '/goodsRelations/addGoodsRelations';
}

//修改商品主附关系
function toModifyGoodsRelations(id){
    window.location = '/goodsRelations/toModifyGoodsRelations?id='+id;
}
