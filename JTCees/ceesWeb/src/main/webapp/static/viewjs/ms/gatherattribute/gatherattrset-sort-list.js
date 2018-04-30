$(function () {
    // 表格初始化
    loadGrid();
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
});

// 根据三级品类查询商品信息（二级）
function queryAttributebycategoryTwo(productSortId) {
    $("#categoryTwo option[value!='']").remove();
    $("#categoryThree option[value!='']").remove();
    if (productSortId == '') {
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
// 列表初始化
function loadGrid() {
    $('#ordertable')
        .datagrid(
        {
            width: 990,
            height: 390,
            nowrap: true,
            striped: true,
            collapsible: true,
            url: '/gatherattributeset/queryGatherAttributeList.json',
            queryParams:{isNotSku:1},
            method: 'post',
            sortName: 'returnTime',
            sortOrder: 'desc',
            remoteSort: true,
            idField: 'id',
            loadMsg: '数据加载中......',
            columns: [
                [
                    {
                        field: 'oneLevelName',
                        title: '一级分类',
                        width: 110
                    },
                    {
                        field: 'twoLevelName',
                        title: '二级分类',
                        width: 110
                    },
                    {
                        field: 'thrLevelName',
                        title: '三级分类',
                        width: 110
                    },
                    {
                        field: 'attributeName',
                        title: '属性名称',
                        width: 150
                    },
                    {
                        field: 'updatePin',
                        title: '维护人',
                        width: 130
                    },
                    {
                        field: 'updateTime',
                        title: '维护时间',
                        width: 180,
                        formatter: function (value, rowData, rowIndex) {
                            return timeStamp2String(value);
                        }
                    },
                    {
                        field: '操作',
                        title: '操作',
                        width: 140,
                        formatter: function (value, rowData, rowIndex) {
                            // function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                            return "<a href='javascript:delConfig(\""
                                + rowData.id
                                + "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"
                                + "删除" + "</span></span></a>"
                        }
                    }
                ]
            ],
            pagination: true,
            rownumbers: true
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
function queryCollectAttributeConfigList() {
    $('#ordertable').datagrid('options').url = '/gatherattributeset/queryGatherAttributeList.json';
    // 为loadGrid()添加参数
    var queryParams = $('#ordertable').datagrid('options').queryParams;
    queryParams.oneLevelId = $("#categoryOne  option:selected").val();
    queryParams.twoLevelId = $("#categoryTwo  option:selected").val();
    queryParams.thrLevelId = $("#categoryThree  option:selected").val();
    // 重新加载datagrid的数据
    $("#ordertable").datagrid('load');
}
// 删除采集属性
function delConfig(id) {
    if (id == '' || id == null) {
        Commons.showWarn("请选择一条要删除的信息");
    } else {
        jqm.confirm({
            w: 400,
            title: '警告',
            type: 'attention',
            content: '<h4>是否确认要删除该采集属性设置信息？</h4>',
            self: self,
            onConfirm: function () {
                jQuery
                    .ajax({
                        type: 'POST',
                        url: '/gatherattributeset/deleteGatherAttributeSetInfo.json',
                        data: {
                            "id": id
                        },
                        success: function (data) {
                            if (data.flag) {
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

function toAddGatherSetPage(){
    window.location = '/gatherattributeset/addgatherattrbysort';
}