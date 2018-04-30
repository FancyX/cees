$(function() {
	// 表格初始化
	loadGrid();
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
			}
		}
	});
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
									field : 'onegroupName',
									title : '一级品类',
									width : 240
								},

								{
									field : 'secondgroupName',
									title : '二级品类',
									width : 240
								},
								{
									field : 'thirdgroupName',
									title : '三级品类',
									width : 240
								},
								{
									field : '操作',
									title : '操作',
									width : 200,
									formatter : function(value, rowData,
											rowIndex) {
											// function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
											return "<a href='javascript:delManagementCategory(\""
													+ rowData.id
													+ "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"
													+ "删除" + "</span></span></a>"

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
// 查询管控品类
function queryManagementCategory() {
	$('#ordertable').datagrid('options').url = '/upcCodeManagement/queryUpcCodeManagement.json';
	// 为loadGrid()添加参数
	var queryParams = $('#ordertable').datagrid('options').queryParams;
	queryParams.onegroupNo = $("#categoryOne  option:selected").val();
	queryParams.secondgroupNo = $("#categoryTwo  option:selected").val();
	queryParams.thirdgroupNo = $("#categoryThree  option:selected").val();
	// 重新加载datagrid的数据
	$("#ordertable").datagrid('load');
}
// 删除管控品类
function delManagementCategory(id) {
	if (id == '' || id == null) {
		Commons.showWarn("请选择一条要删除的信息");
	} else {
		jqm
				.confirm({
					w : 400,
					title : '警告',
					type : 'attention',
					content : '<h4>是否确认要删除该条管控品类信息</h4>',
					self : self,
					onConfirm : function() {
						jQuery
								.ajax({
									type : 'POST',
									async: false,
									url : '/upcCodeManagement/delUpcCodeManagement.json?id='
											+ id,

									success : function(data) {
										if (data) {
											Commons.showSuccess("删除成功！");
											$("#ordertable").datagrid('reload');
										} else {
											Commons.showSuccess("删除失败！");
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

//新增管控品类设置
function toAddManagementCategory(){
    window.location = '/upcCodeManagement/addUpcCodeManagement';
}

/**
 *  提交新增管控品类设置
 */
function saveManagementCategory(){
     
	//一级分类编号
	var onegroupNo = $("#categoryOne  option:selected").val(); 
	if("" == onegroupNo){
		Commons.showError('请选择一级分类编号');
		return false;
	}
    //二级分类编号
	var secondgroupNo = $("#categoryTwo  option:selected").val(); 
	if("" == secondgroupNo){
		Commons.showError('请选择二级分类编号');
		return false;
	}
	//三级分类编号
	var thirdgroupNo = $("#categoryThree  option:selected").val(); 
	if("" == thirdgroupNo){
		Commons.showError('请选择三级分类编号');
		return false;
	}

    //提交新增管控品类设置
	jQuery.ajax({
		type : "POST",
		async: false,
		data :
		{
		   "onegroupNo":onegroupNo,
		   "onegroupName":$("#categoryOne  option:selected").text(),
		   "secondgroupNo":secondgroupNo,
		   "secondgroupName":$("#categoryTwo  option:selected").text(),
		   "thirdgroupNo":thirdgroupNo,
		   "thirdgroupName":$("#categoryThree  option:selected").text()
		},
		url : '/upcCodeManagement/insertUpcCodeManagement.json',
		success: function (data){
			if(data.flag == 0){
				Commons.showError('管控品类已存在');
			}else if(data.flag == 1){
				Commons.showSuccess('管控品类新增成功！',300,function(){
					$("#categoryOne").val("");
					$("#categoryTwo").val("");
					$("#categoryThree").val("");
				});
			}else{
				Commons.showError('管控品类新增失败！');
			}
		}
	});

}
