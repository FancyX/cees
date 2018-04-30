/**
 * 属性规则添加与设置等 @author : liqiguang
 */
var formula2Text;
var strArr = new Array();
var strTextArr = new Array();
$(function () {
	//列表初始化
	loadGrid();
	//如果ID不等于空则判断为修改操作
	if ($("#msAttributesId").val() != null && $("#msAttributesId").val() != '') {
		//为下拉框复默认值
		$("#attributeType  option[value='" + $("#attributeTypeh").val() + "']").attr("selected", true);
		//执行联动
		selectAttributeName($("#attributeType").val());
		$("#attributeName  option[value='" + $("#msAttributesAttributeCode").val() + "']").attr("selected", true);
		$("#attributerulecode").html($("#msAttributesRulename").val());
		//默认查询列表
		queryAttributeContentList();
	}
	$("#formulatxt").hide();//默认公式文本框隐藏
});
//动态添加表格
var row_count = 1;
var row_AtoZ = 65
//列表初始化
function loadGrid() {
	$('#ordertable').datagrid({
		width: 990,
		align: 'center',
		height: 200,
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
				{field: 'content', align: 'center', title: '内容', width: 140, editor: 'text'},
				{field: 'setstate', align: 'center', title: '设置状态', width: 173, formatter: function (value, rowData, rowIndex) {
					if (2 == value) {
						return "已设置兜底"
					} else if (1 == value) {
						return "已设置公式";
					} else {
						return "未设置";
					}
				}},
				{field: 'formula1', align: 'center', title: '公式', width: 273, editor: 'text'},
				{field: '操作', align: 'center', title: '操作', width: 160,
					formatter: function (value, rowData, rowIndex) {
						//function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
						return "<a href='javascript:setAttributeRuleContent(\"" + rowData.id + "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-edit' style='padding-left: 20px;'>" + "设置" + "</span></span></a><a href='javascript:deleteMsAttributeContent(\"" + rowData.id + "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>" + "删除" + "</span></span></a>";
					}
				}
			]
		],
		pagination: true,
		rownumbers: true

	});
}

// 根据属性分类查询属性名称(联动)
function selectAttributeName(attributeType) {
	$("#attributeName option[value!='']").remove();
	if (attributeType == "") {
		return;
	}
	jQuery.ajax({
		type: 'POST',
		async: false,
		url: '/mtsattributerule/selectAttributeName.json',
		data: {
			"attributeType": attributeType, "enable": 1
		},
		success: function (data) {
			$("#attributeName").html(
				"<option value=''>" + "请选择" + "</option>");
			if (data.length > 0 && null != data) {
				for (var i = 0; i < data.length; i++) {
					$("#attributeName").append(
						"<option sid='"+data[i].id+"' stype='"+data[i].showType+"'  value='" + data[i].attributeCode + "'>"
						+ data[i].attributeName + "</option>");
				}
			}
		}
	});
}
//根据属性名称生成属性规则编号
function settAttributeRulename(rulenname) {
	var attr=	$("#attributeName").val();
	var show_type=$("#attributeName").find("option:selected").attr("stype");
	var sid=$("#attributeName").find("option:selected").attr("sid");

	var attrType= $("#attributeType").val();

	var rname=rulenname + timeStamp2String((new Date())) + '' + RndNum(4);

	if(show_type==3) {
				window.location.href = "/mtsattributerule/addAttributeNumTypeRule?rulename="+rname+"&id=" + sid + "&attributeCode=" + attr + "&showType=" + show_type + "&attributeType=" + attrType;
	}else {
		$("#attributerulecode").html(rname);
	}
}
//根据属性名称查询内容
function queryAttributeContentList() {
	if ($('#attributeName').val() == '' || $('#attributeName').val() == null || $('#attributeName').val() == 0) {
		Commons.showWarn("请选择属性名称");
	} else {
		$('#ordertable').datagrid('options').url = '/msattributeconfig/showattrcontent.json';
		var queryParams = $('#ordertable').datagrid('options').queryParams;
		queryParams.attributeCode = $('#attributeName').val();
		//重新加载datagrid的数据
		$("#ordertable").datagrid('load');
	}
}
//设置属性规则页面
function setAttributeRuleContent(id) {
	$("#table1 tr:not(:first)").remove();
	var attributeName = $("#attributeName").find("option:selected").text();
	jQuery.ajax({
		type: 'POST',
		async: false,
		url: '/mtsattributerule/setAttributeRuleContent.json',
		data: {
			"id": id, "attributeName": attributeName
		},
		success: function (data) {
			$("#attributeNametxt").html(data.attributeName);
			$("#contenttxt").html(data.msAttributeContent.content);
			$("#msAttributeContentid").val(data.msAttributeContent.id);
			$("#formula1").val(data.msAttributeContent.formula1);
			if(data.msAttributeContent.setstate == 0) {      //如果状态为0，那么显示兜底值
				$("input:radio[name='setstate'][value='2']").attr("checked", true);
				showtxt(2);
			} else {
				$("input:radio[name='setstate'][value=" + data.msAttributeContent.setstate + "]").attr("checked", true);
				showtxt(data.msAttributeContent.setstate);
			}
			row_count = 1;
			row_AtoZ = 65;
			for (var i = 0; data.mformuList.length > i; i++) {
				var row = $("<tr></tr>");
				var td = $("<td width='60' class='textC'><b>" + row_count + "</b></td>" +
					"<td width='60' id='xuhao" + row_AtoZ + "'  class='textC'></td>" +
					"<td width='60' class='textC'> <select name='attributeType" + row_AtoZ + "' id='attributeType" + row_AtoZ + "' class='select18' style='margin-right:15px;' onchange='selectAttributeCName(" + row_AtoZ + ",this.value);'><OPTION value=''>请选择</OPTION>" +
					"<OPTION value='0'>基本属性</OPTION><OPTION value='1'>特殊属性</OPTION><OPTION value='2'>仓储属性</OPTION><OPTION value='3'>物流属性</OPTION>" +
					"</select>	</td>" +
					"<td width='60' class='textC'><select name='attributeName" + row_AtoZ + "' id='attributeName" + row_AtoZ + "' class='select18' style='margin-right:15px;' " +
					"onchange='selectAttributeCV(" + row_AtoZ + ",this.value)'><OPTION value=''>请选择</OPTION>" +
					"</select></td>" +
					"<td width='60' class='textC'><select name='colvalue" + row_AtoZ + "' id='colvalue" + row_AtoZ + "' class='select18'" +
					"style='margin-right:15px;'><OPTION value=''>请选择</OPTION></select></td>"
				);
				row.append(td);
				$('#table1').append(row)

				$("#xuhao" + row_AtoZ + "").html(data.mformuList[i].parameterList);
				$("#attributeType" + row_AtoZ + "  option[value='" + data.mformuList[i].attributeSortcode + "']").attr("selected", true);
				selectAttributeCName(row_AtoZ, data.mformuList[i].attributeSortcode);
				$("#attributeName" + row_AtoZ + "  option[value='" + data.mformuList[i].attributeCode + "']").attr("selected", true);
				selectAttributeCV(row_AtoZ, data.mformuList[i].attributeCode)
				$("#colvalue" + row_AtoZ + "  option[value='" + data.mformuList[i].attributeValueCode + "']").attr("selected", true);
				row_count++;
				row_AtoZ++;
			}
		}
	});
}
//set JS
function addNew() {
	if (row_AtoZ > 90) {
		Commons.showWarn("超出范围！");
	} else {
		var table1 = $('#table1');
		var firstTr = table1.find('tbody>tr:first');
		var row = $("<tr></tr>");
		var td = $("<td width='60' class='textC'><b>" + row_count + "</b></td>" +
			"<td width='60' id='xuhao'  class='textC'>" + String.fromCharCode(row_AtoZ) + "</td>" +
			"<td width='60' class='textC'> <select name='attributeType" + row_AtoZ + "' id='attributeType" + row_AtoZ + "' class='select18' style='margin-right:15px;' onchange='selectAttributeCName(" + row_AtoZ + ",this.value);'><OPTION value=''>请选择</OPTION>" +
			"<OPTION value='0'>基本属性</OPTION><OPTION value='1'>特殊属性</OPTION><OPTION value='2'>仓储属性</OPTION><OPTION value='3'>物流属性</OPTION>" +
			"</select>	</td>" +
			"<td width='60' class='textC'><select name='attributeName" + row_AtoZ + "' id='attributeName" + row_AtoZ + "' class='select18' style='margin-right:15px;' " +
			"onchange='selectAttributeCV(" + row_AtoZ + ",this.value)'><OPTION value=''>请选择</OPTION>" +
			"</select></td>" +
			"<td width='60' class='textC'><select name='colvalue" + row_AtoZ + "' id='colvalue" + row_AtoZ + "' class='select18'" +
			"style='margin-right:15px;'><OPTION value=''>请选择</OPTION></select></td>"
		);
		row.append(td);
		table1.append(row);
		row_AtoZ++
		row_count++;
	}
}
//设置公式，小写转为大写
function formulaset(mtsformula2) {
	$("#formula1").val($("#formula1").val().toUpperCase());
}
//清空页面公式及参数

function clearformula() {
	$("#table1 tr:not(:first)").remove();
	row_count = 1;
	row_AtoZ = 65
	$("#formula1").val("");
}
/**
 * 替换字符串
 * @param i
 * @param formula2 源表达式
 * @param charCode  源字符串
 * @targCode 目标字符串
 */
function replacementString(i,formula2,charCode,targCode){
	var index  = formula2.indexOf(charCode)
	if(index>=0){
		formula2Text =  formula2.replace(charCode,targCode);
		replacementString(i,formula2Text,charCode,targCode);
	}
}
function chaifenbiaodashi(str,type){
	var startStr = '';
	var endStr = '';
	if(str!=""){
		if(str.indexOf("&&")>-1){
			startStr = str.substr(0,str.indexOf("&&"));
			endStr = str.substr(str.indexOf("&&")+2,str.length);
			chaifenbiaodashi(startStr,type);
			chaifenbiaodashi(endStr,type);
		}else if(str.indexOf("||")>-1){
			startStr = str.substr(0,str.indexOf("||"));
			endStr = str.substr(str.indexOf("||")+2,str.length);
			chaifenbiaodashi(startStr,type);
			chaifenbiaodashi(endStr,type);
		}else{
			if(type=="1"){
				strArr.push(str);
			}else{
				strTextArr.push(str);
			}
		}
	}
}
//保存页面各参数据及公式
function saveformula() {
	strArr.length = 0;
	var id = $("#msAttributeContentid").val();//属性内容ID
	var setstate = $("input:radio[name='setstate'][checked]").val();//设置状态
	//校验规则是否重叠
	var aaa = $('#ordertable').datagrid('getData').rows;
	//循环取列表页信息
	var isstate = false;
	var count = 0;
	for (var a = 0; aaa.length > a; a++) {
		isstate = true;
		if(aaa[a].setstate == 2){
			count++;
		}
	}
	if (setstate == 2) {
		$("#formula1").val("");
		if(count>=1){
			Commons.showWarn("只能设置一个兜底值！");
			return false;
		}
	}else{
		var vlaue = $("#formula1").val();
		vlaue = vlaue.replace(/[ ]/g,"");
		strTextArr.length=0;
		chaifenbiaodashi(vlaue,"2");
		var chongfu = false;
		var jiaoyan = '';
		for(var j = 0 ;j < strTextArr.length;j++) {
			var text = strTextArr[j];
			var code = "";
			var number = "";
			for (var a = 0; aaa.length > a; a++) {
				if (aaa[a].setstate == 1) {
					jiaoyan = aaa[a].formula3;
					strArr.length = 0;
					chaifenbiaodashi(jiaoyan,"1");
					if (strArr.length > 0) {
						if (text.indexOf(">=") > -1) {
							code = text.substr(0, text.indexOf(">="));
							number = text.substr(text.indexOf(">=") + 2, text.length);
							for (var i = 0; i < strArr.length; i++) {
								var oldText = strArr[i];
								var oldCode = "";
								var oldNumber = "";
								if (oldText.indexOf(">=") > -1) {
									oldCode = oldText.substr(0, oldText.indexOf(">="));
									oldNumber = oldText.substr(oldText.indexOf(">=") + 2, oldText.length);
									if (code == oldCode) {
										if (Number(oldNumber) < Number(number)) {
											chongfu = true;
											break;
										}
									}
								}
							}
						} else if (text.indexOf("<=") > -1) {
							code = text.substr(0, text.indexOf("<="));
							number = text.substr(text.indexOf("<=") + 2, text.length);
							for (var i = 0; i < strArr.length; i++) {
								var oldText = strArr[i];
								var oldCode = "";
								var oldNumber = "";
								if (oldText.indexOf("<=") > -1) {
									oldCode = oldText.substr(0, oldText.indexOf("<="));
									oldNumber = oldText.substr(oldText.indexOf("<=") + 2, oldText.length);
									if (code == oldCode) {
										if (Number(oldNumber) > Number(number)) {
											chongfu = true;
											break;
										}
									}
								}
							}
						} else if (text.indexOf("<") > -1) {
							code = text.substr(0, text.indexOf("<"));
							number = text.substr(text.indexOf("<") + 1, text.length);
							for (var i = 0; i < strArr.length; i++) {
								var oldText = strArr[i];
								var oldCode = "";
								var oldNumber = "";
								if (oldText.indexOf("<=") > -1) {
								} else if (oldText.indexOf("<") > -1) {
									oldCode = oldText.substr(0, oldText.indexOf("<"));
									oldNumber = oldText.substr(oldText.indexOf("<") + 1, oldText.length);
									if (code == oldCode) {
										if (Number(oldNumber) > Number(number)) {
											chongfu = true;
											break;
										}
									}
								}
							}
						} else if (text.indexOf(">") > -1) {
							code = text.substr(0, text.indexOf(">"));
							number = text.substr(text.indexOf(">") + 1, text.length);
							for (var i = 0; i < strArr.length; i++) {
								var oldText = strArr[i];
								var oldCode = "";
								var oldNumber = "";
								if (oldText.indexOf(">=") > -1) {
								} else if (oldText.indexOf(">") > -1) {
									oldCode = oldText.substr(0, oldText.indexOf(">"));
									oldNumber = oldText.substr(oldText.indexOf(">") + 1, oldText.length);
									if (code == oldCode) {
										if (Number(oldNumber) < Number(number)) {
											chongfu = true;
											break;
										}
									}
								}
							}
						}
					}
				}
			}
		}
		if(chongfu){
			Commons.showWarn("设置表达式不合理，请删除并重新设置！");
			return false;
		}
	}
	if (id != '' && id != null) {
		var formula1 = $("#formula1").val();//公式
		var boolean = checkFormula(formula1);
		if (boolean) {
			return;
		}
		if (setstate == 1 && formula1 != null && formula1 != '') {
			var formula2 = formula1;
			//正则去重的算法开始
			var s1 = formula1.replace(/(.).*\1/g, "$1")
			var re = new RegExp("[" + s1 + "]", "g")
			var s2 = formula1.replace(re, "")
			s12 = s1 + s2;
			//正则去重的算法结束
			//正则大写字母
			var reg = /[A-Z]/g;
			//判断字符串中大写字母的个数
			var str = s12.match(reg).length
			if ((row_AtoZ - 65) < str) {
				Commons.showWarn("公式与参数不匹配！");
			} else {
				for (var i = 65; row_AtoZ > i; i++) {
					if ($("#attributeType" + i + "").val() == null || $("#attributeType" + i + "").val() == '') {
						Commons.showWarn("请选择属性类型");
						return false;
					} else if ($("#attributeName" + i + "").val() == null || $("#attributeName" + i + "").val() == '') {
						Commons.showWarn("请选择属性名称");
						return false;
					} else {
						//替换公式
						if ($("#colvalue" + i + "").val() != null & $("#colvalue" + i + "").val() != '') {
							replacementString(i,formula2,String.fromCharCode(i),$("#colvalue" + i + "").val())
							formula2 = formula2Text;
						} else {
							replacementString(i,formula2,String.fromCharCode(i),$("#attributeName" + i + "").val())
							formula2 = formula2Text;
						}

						jQuery.ajax({
							url: "/mtsattributerule/saveMsAttributeFormula.json",
							async: false,
							type: "post",
							data: {
								contentId: $("#msAttributeContentid").val(),
								parameterList: String.fromCharCode(i),
								attributeSortcode: $("#attributeType" + i + "").val(),
								attributeSortname: $("#attributeType" + i + "").find("option:selected").text(),
								attributeCode: $("#attributeName" + i + "").val(),
								attributeName: $("#attributeName" + i + "").find("option:selected").text(),
								attributeValueCode: $("#colvalue" + i + "").val(),
								attributeValueName: $("#colvalue" + i + "").find("option:selected").text()
							},
							success: function (data) {
							}});
					}
				}
				formula2 =formula2Text;
				formula2 = formula2.replace(/[ ]/g,"");
				formula1 = formula1.replace(/[ ]/g,"");

				jQuery.ajax({
					url: "/mtsattributerule/modifyMsAttributeContent.json",
					type: "post",
					data: {
						id: id,
						setstate: setstate,
						formula1: formula1,
						formula2: formula2
					},
					success: function (data) {
						Commons.showSuccess("操作成功！", function () {
							$("#ordertable").datagrid('reload');
							$("#attributeNametxt").html("");
							$("#contenttxt").html("");
							$("#msAttributeContentid").val("");
							$("#formula1").val("");
							$("input:radio[name='setstate'][value=2]").attr("checked", true);
							clearformula();

						});
					}
				});
			}
		} else if (setstate == 2) {
			jQuery.ajax({
				url: "/mtsattributerule/modifyMsAttributeContent.json",
				type: "post",
				data: {
					id: id,
					setstate: 2
				},
				success: function (data) {
					Commons.showSuccess("操作成功！", function () {

						$("#ordertable").datagrid('reload');
						$("#attributeNametxt").html("");
						$("#contenttxt").html("");
						$("#msAttributeContentid").val("");
						$("#formula1").val("");
						$("input:radio[name='setstate'][value=2]").attr("checked", true);
						clearformula();

					});
				}});
		} else {
			Commons.showWarn("请输入公式！");
		}
	} else {
		Commons.showWarn("请先选择要设置的属性内容！");
	}
}

//添加字符串
function mtsformula(mtsformula) {
	if ($("#formula1").val() != null && $("#formula1").val() != "") {
		$("#formula1").val($("#formula1").val() + " " + mtsformula + " ");
	}
}
// 根据属性分类查询属性名称（联动）
function selectAttributeCName(attributeid, attributeType) {
	$("#attributeName" + attributeid + " option[value!='']").remove();
	if (attributeType == "") {
		return;
	}
	jQuery.ajax({
		type: 'POST',
		async: false,
		url: '/mtsattributerule/selectDepAttributeName.json',
		data: {
			"attributeType": attributeType, "enable": 1
		},
		success: function (data) {

			$("#attributeName" + attributeid + "").html(
				"<option value=''>" + "请选择" + "</option>");

			if (data.length > 0 && null != data) {
				for (var i = 0; i < data.length; i++) {

					$("#attributeName" + attributeid + "").append(
						"<option value='" + data[i].attributeCode + "'>"
						+ data[i].attributeName + "</option>");
				}
			}
		}
	});
}
// 根据属性名称查询属性值（联动）
function selectAttributeCV(attributeid, colvalue) {
	$("#colvalue" + attributeid + " option[value!='']").remove();

	if (colvalue == "") {
		return;
	}
	jQuery.ajax({
		type: 'POST',
		async: false,
		url: '/mtsattributerule/selectAttributeContent.json',
		data: {
			"attributeCode": colvalue
		},
		success: function (data) {
			$("#colvalue" + attributeid + "").html(
				"<option value=''>" + "请选择" + "</option>");
			if (data.length > 0 && null != data) {
				for (var i = 0; i < data.length; i++) {
					$("#colvalue" + attributeid + "").append(
						"<option value='" + data[i].colvalue + "'>"
						+ data[i].content + "</option>");
				}
			}
		}
	});
}

// 保存设置的属性信息
function saveAttributeRule() {
	//得到列表页信息
	var aaa = $('#ordertable').datagrid('getData').rows
	//循环取列表页信息
	var isstate = false;
	var cont = 0;
	for (var a = 0; aaa.length > a; a++) {
		if (aaa[a].setstate == 0) {
			isstate = true;
		} else if (aaa[a].setstate == 2) {
			cont++;
		}
	}
	if (cont > 1) {
		Commons.showWarn("只能设置一个兜底值！");
		return false;
	} else if (isstate) {
		Commons.showWarn("请设置属性规则！");
		return false;
	}else if(cont==0){
		Commons.showWarn("必须设置一个兜底值！");
		return false;
	}
	else {
		jQuery.ajax({
			url: "/mtsattributerule/saveAttributeRule.json",
			type: "post",
			data: {
				attributeCode: $("#attributeName").val(),
				rulename: $("#attributerulecode").html(),
				rulestate: 1
			},
			success: function (data) {
				Commons.showSuccess("操作成功！", function () {
					window.location.href = "/mtsattributerule/initpage";
				});
			}});
	}
}

//删除属性内容
function deleteMsAttributeContent(id) {
	clearformula();//清空设置列表
	jQuery.ajax({
		type: 'POST',
		url: '/mtsattributerule/deleteMsAttributeContent.json',
		data: {
			"id": id
		},
		success: function (data) {
			if (data == true) {
				Commons.showSuccess("操作成功！", function () {
					$("#ordertable").datagrid('load');
				});
			}
		}
	});
}

//删除属性内容
function showtxt(id) {
	if (id == 1) {
		$("#formulatxt").show();
	} else {
		$("#formulatxt").hide();
		clearformula();//清空设置列表
	}
}

function checkFormula(formualStr) {
	var andFlag = $.trim(formualStr).toUpperCase().lastIndexOf("AND");
	var orFlag = $.trim(formualStr).toUpperCase().lastIndexOf("OR");
	var formualTrim = $.trim(formualStr);
//    var paramsStr = cleanOtherChar(formualTrim.toUpperCase());
//    var pp = paramsStr.split(" ");
//    for(i=0;i<pp.length;i++){
//        if()
//    }
	if (andFlag + 3 == formualTrim.length || orFlag + 2 == formualTrim.length) {
		Commons.showWarn("公式不能以“AND”或“OR”结束");
		return true;
	}
	return false;
//    var paramCharArray = new Array();
//    var paramNo = row_AtoZ-1 ;
//    for(;paramNo>=65;paramNo--){
//
//    }
}

function cleanOtherChar(formualStr) {
	var andFlag = false;
	var orFlag = false;
	var dyFlag = false;
	var xyFlag = false;
	while (true) {
		if (formualStr.indexOf("AND") > 0) {
			formualStr = formualStr.replace("AND", "");
		} else {
			andFlag = true;
		}
		if (formualStr.indexOf("OR") > 0) {
			formualStr = formualStr.replace("OR", "");
		} else {
			orFlag = true;
		}
		if (formualStr.indexOf(">=") > 0) {
			formualStr = formualStr.replace(">=", "");
		} else if (formualStr.indexOf(">") > 0) {
			formualStr = formualStr.replace(">", "");
		} else {
			dyFlag = true;
		}
		if (formualStr.indexOf("<=") > 0) {
			formualStr = formualStr.replace("<=", "");
		} else if (formualStr.indexOf("<") > 0) {
			formualStr = formualStr.replace("<", "");
		} else {
			xyFlag = true;
		}
		if (andFlag && orFlag && dyFlag && xyFlag) {
			break;
		}
	}

	return formualStr;
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
	return year + "" + month + "" + date + "" + hour + "" + minute + "" + second;
}
//生成N位随即数
function RndNum(n) {
	var rnd = "";
	for (var i = 0; i < n; i++) {
		rnd += Math.floor(Math.random() * 10);
	}
	return rnd;
}