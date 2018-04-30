$(function () {
    //初始化表格
    loadGrid();
    //已提交列表初始化
    alreadyLoadGrid();
    //初始化下拉列表
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
    $("#categoryThree").bind('change', function () {
        $('#ordertable').datagrid('loadData', []);
        $('#ordertable1').datagrid('loadData', []);
    })
});
//列表初始化
function loadGrid() {
    $('#ordertable').datagrid({
        width: 970,
        height: 210,
        nowrap: true,
        striped: true,
        collapsible: true,
        url: null,
        method: 'post',
        singleSelect: false,
        selectOnCheck: true,
        checkOnSelect: true,
        sortName: 'returnTime',
        sortOrder: 'desc',
        remoteSort: true,
        idField: 'attributeCode',
        loadMsg: '数据加载中......',
        columns: [
            [
                {field: 'ck', checkbox: true},
                {field: 'attributeType', title: '属性分类', width: 330,
                    formatter: function (value, rowData, rowIndex) {
                        var result = '';
                        if (0 == value) {
                            return "基本属性";
                        } else if (1 == value) {
                            return "扩展属性";
                        } else if (2 == value) {
                            return "仓储属性";
                        } else if (3 == value) {
                            return "物流属性";
                        }
                    }
                },
                {field: 'attributeName', title: '属性名称', width: 610}
            ]
        ],
        onUnselect: function () {
            clearCheckBox();
        },
        onSelect: function () {
            setAllChecked();
        },
        pagination: false
    });
}
//删除记录
function toDelete() {
    var row = $('#ordertable1').datagrid('getSelected');
    var index = $('#ordertable1').datagrid('getRowIndex', row);
    $('#ordertable1').datagrid('deleteRow', index);
}

//已提交列表初始化
function alreadyLoadGrid() {
    $('#ordertable1').datagrid({
        width: 970,
        height: 210,
        nowrap: true,
        striped: true,
        collapsible: true,
        url: null,
        method: 'post',
        singleSelect: true,
        sortName: 'returnTime',
        sortOrder: 'desc',
        remoteSort: true,
        idField: 'attributeCode',
        loadMsg: '数据加载中......',
        columns: [
            [
                {field: 'attributeCode', title: '属性编码', width: 200},
                {field: 'attributeType', title: '属性分类', width: 240,
                    formatter: function (value, rowData, rowIndex) {
                        var result = '';
                        if (0 == value) {
                            return "基本属性";
                        } else if (1 == value) {
                            return "扩展属性";
                        } else if (2 == value) {
                            return "仓储属性";
                        } else if (3 == value) {
                            return "物流属性";
                        }
                    }},
                {field: 'attributeName', title: '属性名称', width: 400},
                {field: '变动记录', title: '操作', width: 87,
                    formatter: function (value, rowData, rowIndex) {
                        //function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                        return "<a href='javascript:toDelete()' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-edit' style='padding-left: 20px;'>" + "删除" + "</span></span></a>";
                    }
                }
            ]
        ],
        pagination: false
    });
}

//datagrid取消全选
function clearCheckBox() {
    $('#ordertable').parent().find("div .datagrid-header-check").children("input[type='checkbox']").eq(0).attr("checked", false);
}
//设置全选
function setAllChecked() {
    var selectedData = $('#ordertable').datagrid('getSelections');
    var rowData = $('#ordertable').datagrid('getRows');
    if (selectedData.length == rowData.length) {
        $('#ordertable').parent().find("div .datagrid-header-check").children("input[type='checkbox']").eq(0).attr("checked", true);
    }
}

//查询商品属性
function queryAttributeList() {
    $("input[type='checkbox']").attr("checked", false);
    var thirdgroupNo = $("#categoryThree  option:selected").val();
    if ('' == thirdgroupNo || null == thirdgroupNo) {
        Commons.showWarn("请选择三级品类！");
        return false;
    }
    $('#ordertable').datagrid('clearSelections');
    $('#ordertable').datagrid('options').url = '/gatherattributeset/queryattributebysort.json';
    //为loadGrid()添加参数
    var queryParams = $('#ordertable').datagrid('options').queryParams;
    queryParams.attributeType = $('#attributeType').val();
    queryParams.thrLevelId = thirdgroupNo;
    //重新加载datagrid的数据
    $("#ordertable").datagrid('load');
    //清空已提交列表
    //$('#ordertable1').datagrid('loadData', { total: 0, rows: [] });
}
// 根据三级品类查询商品信息（二级）
function queryAttributebycategoryTwo(productSortId) {
    $("#categoryTwo option[value!='']").remove();
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
//向提交列表插入数据
function insertAlreadlyGoodInfo() {
    var rows = $('#ordertable').datagrid('getSelections');
    var rowData = $('#ordertable1').datagrid('getRows');
    if (rows.length > 0) {
        for (var i = 0; i < rows.length; i++) {
            var isSame = false;
            if (rowData.length > 0) {
                for (var a = 0; a < rowData.length; a++) {
                    if (rowData[a].attributeCode == rows[i].attributeCode) {
                        isSame = true;
                        break;
                    }
                }
                if (!isSame) {
                    $('#ordertable1').datagrid('insertRow', {
                        index: 0,
                        row: {attributeCode: rows[i].attributeCode, attributeType: rows[i].attributeType, attributeName: rows[i].attributeName}
                    });
                }
            } else {
                $('#ordertable1').datagrid('insertRow', {
                    index: 0,
                    row: {attributeCode: rows[i].attributeCode, attributeType: rows[i].attributeType, attributeName: rows[i].attributeName}
                });
            }
        }
    } else {
        Commons.showInfo("请选择要提交的属性！");
    }
}

function queryAttributeConfigIsExist() {
    var onegroupNo = $("#categoryOne  option:selected").val();
    var onegroupName = $("#categoryOne  option:selected").text();
    var secondgroupNo = $("#categoryTwo  option:selected").val();
    var secondgroupName = $("#categoryTwo  option:selected").text();
    var thirdgroupNo = $("#categoryThree  option:selected").val();
    var thirdgroupName = $("#categoryThree  option:selected").text();
    if (onegroupNo == 0 || secondgroupNo == 0 || thirdgroupNo == 0) {
        Commons.showWarn("请选择三级品类！");
        return false;
    }
    var attrContJsonStr = '';
    var rowData = $('#ordertable1').datagrid('getRows');
    if (rowData.length >= 1) {
        for (var i = 0; i < rowData.length; i++) {
            attrContJsonStr += rowData[i].attributeCode + ',';
        }
        attrContJsonStr = attrContJsonStr.substring(0, attrContJsonStr.lastIndexOf(','));
    } else {
        Commons.showWarn("无已提交内容!");
        return false;
    }
    var flagRes = true;
    jQuery.ajax({
        type: 'POST',
        async: false,
        data: {
            "oneLevelId": onegroupNo,
            "oneLevelName": onegroupName,
            "twoLevelId": secondgroupNo,
            "twoLevelName": secondgroupName,
            "thrLevelId": thirdgroupNo,
            "thrLevelName": thirdgroupName,
            "attrList": attrContJsonStr,
            "isNotSku": 1
        },
        url: '/gatherattributeset/queryAttributeConfigIsExist.json',
        success: function (data) {
            if (data.codes != null && data.codes != '') {
                Commons.showWarn("属性编码为：" + data.codes + "已经存在，请删除!");
                flagRes = false;
            }
        }
    });
    return flagRes;
}


//提交采集任务信息
function saveCollectAC() {
    var checkIfExist = queryAttributeConfigIsExist();
    if(!checkIfExist){
        return false;
    }
    var onegroupNo = $("#categoryOne  option:selected").val();
    var onegroupName = $("#categoryOne  option:selected").text();
    var secondgroupNo = $("#categoryTwo  option:selected").val();
    var secondgroupName = $("#categoryTwo  option:selected").text();
    var thirdgroupNo = $("#categoryThree  option:selected").val();
    var thirdgroupName = $("#categoryThree  option:selected").text();
    if (onegroupNo == 0 || secondgroupNo == 0 || thirdgroupNo == 0) {
        Commons.showWarn("请选择三级分类！");
        return false;
    }
    var attrList = '';
    var rowData = $('#ordertable1').datagrid('getRows');
    if (rowData.length >= 1) {
        //授权JSON字符串拼接
        for (var i = 0; i < rowData.length; i++) {
            attrList += rowData[i].attributeCode + '_' + rowData[i].attributeName + ',';
        }
        attrList = attrList.substring(0, attrList.lastIndexOf(','));
    } else {
        Commons.showWarn("无已提交内容!");
        return false;
    }
    var rndJqmId = 'savegatherattributesetinfo';
    jqm.loading({
        jqmId: rndJqmId,
        size: 48,
        content: ''
    });
    jQuery.ajax({
        type: 'POST',
        data: {
            "oneLevelId": onegroupNo,
            "oneLevelName": onegroupName,
            "twoLevelId": secondgroupNo,
            "twoLevelName": secondgroupName,
            "thrLevelId": thirdgroupNo,
            "thrLevelName": thirdgroupName,
            "attrList": attrList
        },
        url: '/gatherattributeset/savegatherattributesetinfo.json',
        success: function (data) {
            if (data.flag == true) {
                Commons.showSuccess("操作成功！", 300,function(){ window.location.href="/gatherattributeset/togatherattrsetbysort?a="+Math.random()*10+1;   });
            } else {
                Commons.showError("操作失败！");
            }
            $("#" + rndJqmId).jqmHide();
        }
    });
}

/**
 * 返回商品属性维护页
 */
function goback(){
    window.location.href = "/gatherattributeset/togatherattrsetbysort";
}