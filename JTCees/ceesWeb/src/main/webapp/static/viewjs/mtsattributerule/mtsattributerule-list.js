/**
 * 属性规则管理 @author : liqiguang
 */
$(function () {
	//表格初始化
	loadGrid()
	queryAttributeList();
});

//列表初始化
function loadGrid() {
	$('#ordertable').datagrid({
		width: 991,
		height: 410,
		nowrap: true,
		striped: true,
		collapsible: true,
		url: null,
		method: 'post',
		sortName: 'returnTime',
		sortOrder: 'desc',
		remoteSort: true,
		idField: 'id',
		loadMsg: '数据加载中......',
		columns: [
			[
				{field: 'attributeName', align: 'center', title: '属性名称', width: 105},
				{field: 'rulename', align: 'center', title: '属性规则名称', width: 205},
				{field: 'showType', align: 'center', title: '展示类型', width: 60,
					formatter: function (value, rowData, rowIndex) {
						if (0 == value) {
							return "文本类型";
						} else if (1 == value) {
							return "下拉列表";
						} else if (2 == value) {
							return "日期类型";
						}else if (3 == value) {
							return "数值类型";
						}
					}
				},
				{field: 'rulestate', align: 'center', title: '状态', width: 60,
					formatter: function (value, rowData, rowIndex) {
						if (0 == value) {
							return "作废";
						} else if (1 == value) {
							return "生效";
						}
					}
				},
				{field: 'setpin', align: 'center', title: '设置人', width: 80},
				{field: 'settime', align: 'center', title: '设置时间', width: 140,
					formatter: function (value, rowData, rowIndex) {
						if (value != '' & value != null) {
							return timeStamp2String(value);
						} else {
							return '';
						}
					}
				},
				{field: 'cancelpin', align: 'center', title: '作废人', width: 80},
				{field: 'canceltime', align: 'center', title: '作废时间', width: 140,
					formatter: function (value, rowData, rowIndex) {
						if (value != '' & value != null) {
							return timeStamp2String(value);
						} else {
							return '';
						}
					}
				},
				{field: '规则操作', align: 'center', title: '规则操作', width: 120,
					formatter: function (value, rowData, rowIndex) {
						//function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
						//如果当前为无效只显示修改操作否则显示修改及无效操作
						if (rowData.rulestate == 1) {
							return "<a href='javascript:toModify(\"" + rowData.id + "\",\"" + rowData.showType + "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-edit' style='padding-left: 20px;'>" + "修改" + "</span></span></a><a href='javascript:setRuleState(\"" + rowData.id + "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>" + "无效" + "</span></span></a>";
						}
					}
				}
			]
		],
		pagination: true,
		rownumbers: true
	});
}

//查询商品属性
function queryAttributeList() {
	//为loadGrid()添加参数
	var queryParams = $('#ordertable').datagrid('options').queryParams;
	queryParams.attributeName = $('#attributeName').val();
	//得到属性规则状态
	queryParams.rulestate = $('#rulestate').val();
	queryParams.showType = $('#showType').val();

	//只查询有效的属性信息
	queryParams.enable = 1;
	$('#ordertable').datagrid('options').url = '/mtsattributerule/queryattribute.json';
	//重新加载datagrid的数据
	$("#ordertable").datagrid('load');
}

//跳转到修改页面
function toModify(id,showType) {
	window.location.href = "/mtsattributerule/modifyAttributeRule?id=" + id + "&showType="+showType+"&" + new Date();
}

//跳转到新增页面
function doAttributeRule() {
	window.location.href = "/mtsattributerule/addAttributeRule";
}

//设置无效属性规则
function setRuleState(id) {
	if (id == '' || id == null) {
		Commons.showWarn("请选择一条要改为无效的属性");
	} else {
		jqm.confirm({
			w: 400,
			title: '警告',
			type: 'attention',
			content: '<h4>是否将此属性设置为无效？</h4>',
			self: self,
			onConfirm: function () {
				jQuery.ajax({
					type: 'POST',
					url: '/mtsattributerule/setRuleState?id=' + id,
					success: function (data) {
						if (data) {
							Commons.showSuccess("操作成功！");
							$("#ordertable").datagrid('reload');
						} else {
							Commons.showSuccess("操作失败！");
						}
					},
					error: function () {
						Commons.showError("系统异常！");
					}

				});
			}
		});
	}
}

//时间格式化
function timeStamp2String(time) {
	var datetime = new Date();
	datetime.setTime(time);
	var year = datetime.getFullYear();
	var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;
	var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();
	var hour = datetime.getHours() < 10 ? "0" + datetime.getHours() : datetime.getHours();
	var minute = datetime.getMinutes() < 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();
	var second = datetime.getSeconds() < 10 ? "0" + datetime.getSeconds() : datetime.getSeconds();
	return year + "/" + month + "/" + date + " " + hour + ":" + minute + ":" + second;
}