/**
 * 属性规则添加与设置等 @author : liqiguang
 */
var strArr = new Array();
$(function () {
    //列表初始化
    loadNumRuleGrid();
    $('#div_rule_set').jqm({
        closeClass: 'jqmClose',
        overlayClass: 'whiteOverlay',
        retrieveTop: function () {
            return 20;
        },
        movable: true
    });

    //为下拉框复默认值
    $("#attributeType  option[value='" + $("#attributeTypeh").val() + "']").attr("selected", true);
    //执行联动
    selectAttributeName($("#attributeType").val());
    $("#attributeName  option[value='" + $("#msAttributesAttributeCode").val() + "']").attr("selected", true);
    $("#attributerulecode").html($("#msAttributesRulename").val());
    settAttributeRulename($('#attributeName').find('option:selected').selectedIndex, 0);

    if ($("#msAttributesRulename").val() == '') {
        var rname = $('#attributeName').find('option:selected').text() + timeStamp2String((new Date())) + '' + RndNum(4);
        $("#attributerulecode").html(rname);
    } else {
        $("#attributerulecode").html($("#msAttributesRulename").val());
    }


    //默认查询列表
    queryAttributeContentList();
    setAttributeRuleContent();

    if($("#limvalue").val()==''){
        $('#limvalue').attr("value", "0");
    }

});
//动态添加表格
var row_count = 1;
var row_AtoZ = 65;
//列表初始化
function loadNumRuleGrid() {
    $('#numruletable').datagrid({
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
                {field: 'scope', align: 'center', title: '范围', width: 240},
                {field: 'value', align: 'center', title: '属性值', width: 273},
                {
                    field: '操作', align: 'center', title: '操作', width: 260,
                    formatter: function (value, rowData, rowIndex) {
                        return "<a href='javascript:toEditNumRuleItem(\"" + rowData.scope + "\",\"" + rowData.value + "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-edit' style='padding-left: 20px;'>" + "设置" + "</span></span></a><a href='javascript:deleteMsAttributeContent()' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>" + "删除" + "</span></span></a>";
                    }
                }
            ]
        ],
        showFooter:false,
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
            "attributeType": attributeType, "enable": 1, "showType": 3
        },
        success: function (data) {
            $("#attributeName").html(
                "<option  value=''>" + "请选择" + "</option>");
            if (data.length > 0 && null != data) {
                for (var i = 0; i < data.length; i++) {
                    $("#attributeName").append(
                        "<option  sid='" + data[i].id + "' stype='" + data[i].showType + "'  value='" + data[i].attributeCode + "'>"
                        + data[i].attributeName + "</option>");
                }
            }
        }
    });
}
//根据属性名称生成属性规则编号
function settAttributeRulename(attrIndex, type) {
    var attr = $("#attributeName").val();
    var show_type = $("#attributeName").find("option:selected").attr("stype");
    var sid = $("#attributeName").find("option:selected").attr("sid");

    var attrType = $("#attributeType").val();


    if (show_type == 1 || show_type == 2) {

        window.location.href = "/mtsattributerule/modifyAttributeRule?id=" + sid + "&showType=" + show_type;

    }
    else {
        if (type != 0)
            window.location.href = "/mtsattributerule/addAttributeNumTypeRule?id=" + sid + "&attributeCode=" + attr + "&showType=" + show_type + "&attributeType=" + attrType;

    }

}
var is_new = 0;
function showNumRuleSet() {
    $('#numruletable').datagrid('selectRow', -1);

    $('#div_rule_set').jqmShow();

    $('#scopeVal').attr("value", "");
    $('#valueTxt').attr("value", "");

    is_new = 1;

}
//根据属性名称查询内容
function queryAttributeContentList() {
    if ($('#attributeName').val() == '' || $('#attributeName').val() == null || $('#attributeName').val() == 0) {
        Commons.showWarn("请选择属性名称");
    } else {
        $('#numruletable').datagrid('options').url = '/mtsattributerule/showNumRuleAttributeContent.json';
        var queryParams = $('#numruletable').datagrid('options').queryParams;
        queryParams.attributeCode = $('#attributeName').val();
        //重新加载datagrid的数据
        $("#numruletable").datagrid('load');
    }
}
//设置属性规则页面
function setAttributeRuleContent() {
    $("#table1 tr:not(:first)").remove();
    var attributeName = $("#attributeName").val();
    jQuery.ajax({
        type: 'POST',
        async: false,
        url: '/mtsattributerule/setNumRuleAttributeRuleContent.json',
        data: {
            "attributeName": attributeName
        },
        success: function (data) {
            row_count = 1;
            row_AtoZ = 65;
            for (var i = 0; data.mformuList.length > i; i++) {
                var row = $("<tr></tr>");
                var td = $("<td width='60' class='textC'><b>" + row_count + "</b></td>" +
                    "<td width='60' id='xuhao" + row_AtoZ + "'  class='textC smname'></td>" +
                    "<td width='60' class='textC'> <select name='attributeType" + row_AtoZ + "' id='attributeType" + row_AtoZ + "' class='select18' style='margin-right:15px;' onchange='selectAttributeCName(" + row_AtoZ + ",this.value);'><OPTION value=''>请选择</OPTION>" +
                    "<OPTION value='0'>基本属性</OPTION><OPTION value='1'>特殊属性</OPTION>" +
                    "</select>	</td>" +
                    "<td width='60' class='textC'><select name='attributeName" + row_AtoZ + "' id='attributeName" + row_AtoZ + "' class='select18' style='margin-right:15px;' " +
                    "onchange='selectAttributeCV(" + row_AtoZ + ",this.value)'><OPTION value=''>请选择</OPTION>" +
                    "</select></td>"
                );
                row.append(td);
                $('#table1').append(row)

                $("#xuhao" + row_AtoZ + "").html(data.mformuList[i].parameterList);
                $("#attributeType" + row_AtoZ + "  option[value='" + data.mformuList[i].attributeSortcode + "']").attr("selected", true);
                selectAttributeCName(row_AtoZ, data.mformuList[i].attributeSortcode);
                $("#attributeName" + row_AtoZ + "  option[value='" + data.mformuList[i].attributeCode + "']").attr("selected", true);

                row_count++;
                row_AtoZ++;
            }
        }
    });
}
function addNew() {
    if (row_AtoZ > 90) {
        Commons.showWarn("超出范围！");
    } else {
        var table1 = $('#table1');
        var row = $("<tr></tr>");
        var td = $("<td width='60' class='textC'><b>" + row_count + "</b></td>" +
            "<td width='60' id='xuhao'  class='textC smname'>" + String.fromCharCode(row_AtoZ) + "</td>" +
            "<td width='60' class='textC'> <select name='attributeType" + row_AtoZ + "' id='attributeType" + row_AtoZ + "' class='select18' style='margin-right:15px;' onchange='selectAttributeCName(" + row_AtoZ + ",this.value);'><OPTION value=''>请选择</OPTION>" +
            "<OPTION value='0'>基本属性</OPTION><OPTION value='1'>特殊属性</OPTION>" +
            "</select>	</td>" +
            "<td width='60' class='textC'><select name='attributeName" + row_AtoZ + "' id='attributeName" + row_AtoZ + "' class='select18' style='margin-right:15px;' " +
            "onchange='selectAttributeCV(" + row_AtoZ + ",this.value)'><OPTION value=''>请选择</OPTION>" +
            "</select></td>"
        );
        row.append(td);
        table1.append(row);
        row_AtoZ++;
        row_count++;
    }
}

function toEditNumRuleItem(scope, valueTxt) {

    $('#scopeVal').attr("value", scope);
    $('#valueTxt').attr("value", valueTxt);

    $('#div_rule_set').jqmShow();

}

function toDeleteNumRuleItem(index) {
    $('#num_r_tr' + index).remove();
}
/**
 * 添加新规则
 * @param scope 范围
 * @param value 值
 */
function addNewNumRule() {


    var scopeVal = $('#scopeVal').val();

    var valueTxt = $('#valueTxt').val();


    if (is_new == 1) {
        $('#numruletable').datagrid('insertRow', {

            row: {
                'scope': scopeVal,
                'value': valueTxt
            }
        });
    } else {
        modifyNumRule();
    }

    is_new = 0;
    $('#div_rule_set').jqmHide();
}


function modifyNumRule() {


    var scopeVal = $('#scopeVal').val();

    var valueTxt = $('#valueTxt').val();


    var select = $('#numruletable').datagrid('getSelected');

    var index = $('#numruletable').datagrid('getRowIndex', select);
    $('#numruletable').datagrid('updateRow', {
        index: index,
        row: {
            'scope': scopeVal,
            'value': valueTxt
        }
    });
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

function changeAttrName(word) {

    //依赖参数从1开始，因此字母ascii-64
    var ind = word.charCodeAt(0);
    if ($("#attributeType" + ind + "").val() == null || $("#attributeType" + ind + "").val() == '') {
        Commons.showWarn("请选择属性类型");
        return false;
    } else if ($("#attributeName" + ind + "").val() == null || $("#attributeName" + ind + "").val() == '') {
        Commons.showWarn("请选择属性名称");
        return false;
    } else {
        //替换公式

        return $("#attributeName" + ind + "").val();
    }
}


function saveNumRules() {

    var datas = $('#numruletable').datagrid("getRows");
    var rows = [];

    for (var i = 0; i < datas.length; i++) {
        var item = {};

        item.scope = datas[i].scope;
        item.value = datas[i].value;
        var express_attr = getExpressWithAttributes(item.scope);
        var value_attr = getExpressWithAttributes(item.value);
        item.express = express_attr;
        item.attributeCode = $('#attributeName').val();
        item.attrValue = value_attr;
        rows.push(item);
    }
    var json = $.toJSON(rows);
    var defineAttributes = getAllDefineAttributes();

    jQuery.ajax({
        url: "/mtsattributerule/modifyNumRule.json",
        type: "post",
        data: {
            attributeCode: $('#attributeName').val(),
            expresses: json,
            attributes: defineAttributes

        },
        success: function (data) {
            Commons.showSuccess("操作成功！", function () {
                $("#numruletable").datagrid('reload');

            });
        }
    });

    jQuery.ajax({
        url: "/mtsattributerule/saveAttributeRule.json",
        type: "post",
        data: {
            attributeCode: $("#attributeName").val(),
            rulename: $("#attributerulecode").html(),
            limValue: $('#limvalue').val(),
            rulestate: 1
        },
        success: function (data) {
        }
    });
}
function getAllDefineAttributes() {
    var attr_element = [];
    var json;
    $(".smname").each(function (i) {
        i = 65 + i;
        var dat = {};
        dat.attributeSortcode = $("#attributeType" + i + "").val();
        dat.attributeSortname = $("#attributeType" + i + "").find("option:selected").text();
        dat.attributeCode = $("#attributeName" + i + "").val();
        dat.attributeName = $("#attributeName" + i + "").find("option:selected").text();
        dat.setstate = 3;
        dat.attributeValueCode = $("#attributeName").val();
        dat.attributeValueName = $("#attributeName").find("option:selected").text();
        dat.parameterList = String.fromCharCode(i);
        attr_element.push(dat);


        json = $.toJSON(attr_element);


    });
    return json;
}

//保存页面各参数据及公式
function getExpressWithAttributes(express_simplify) {
    strArr.length = 0;


    //简版表达式(带有字母A-Z)的
    //带有attr_code的表达式
    var express_attr = [];


    for (var i = 0; i < express_simplify.length; i++) {

        var word = express_simplify.charAt(i), w_ascii = word.charCodeAt(0);
        //当words为字母时
        if (w_ascii >= 65 && w_ascii <= 90) {
            word = changeAttrName(word);

        }
        express_attr.push(word);
    }

    return express_attr.join('');


}

//添加字符串
function mtsformula(mtsformula) {
    if ($("#scopeVal").val() != null && $("#scopeVal").val() != "") {
        $("#scopeVal").val($("#scopeVal").val() + " " + mtsformula + " ");
    }
    $("#scopeVal").focus();
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
    } else if (cont == 0) {
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
            }
        });
    }
}

//删除属性内容
function deleteMsAttributeContent() {
    var row = $('#numruletable').datagrid('getSelected');
    if (row) {
        var index = $('#numruletable').datagrid('getRowIndex', row);
        $('#numruletable').datagrid('deleteRow', index);
    }
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
    var andFlag = $.trim(formualStr).toUpperCase().lastIndexOf("&&");
    var orFlag = $.trim(formualStr).toUpperCase().lastIndexOf("||");
    var formualTrim = $.trim(formualStr);
    if (andFlag + 3 == formualTrim.length || orFlag + 2 == formualTrim.length) {
        Commons.showWarn("公式不能以“AND”或“OR”结束");
        return true;
    }
    return false;
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