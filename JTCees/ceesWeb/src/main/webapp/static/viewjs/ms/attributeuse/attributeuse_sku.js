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
            $("#categoryOne").prepend("<option value='-1'>请选择</option>");
            $("#categoryTwo").prepend("<option value='-1'>请选择</option>");
            $("#categoryThree").prepend("<option value='-1'>请选择</option>");
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
    $("#categoryTwo").append("<option value='-1'>请选择</option>");
    $("#categoryThree").append("<option value='-1'>请选择</option>");
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
    $("#categoryThree").append("<option value='-1'>请选择</option>");
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
function recalc(sku,attributeCode) {

    jQuery.ajax({
        type: 'POST',
        url: '/attributeuse/recalc.json',
        data: {
            "goodsCode": sku,
            "attributeCode": attributeCode
        },
        success: function (data) {

        }
    });
}

// 列表初始化
function loadGrid() {
    $('#ordertable').datagrid(
        {
            width: 990,
            height: 350,
            nowrap: true,
            striped: true,
            collapsible: true,
            url: '',
//            queryParams:{
//                attributeName :'',
//                attributeUseStatus : -1,
//                attrDownStatus : -1,
//                ruleDownStatus : -1,
//                oneLevelClassify : -1,
//                twoLevelClassify : -1,
//                threeLevelClassify : -1
//            },
            method: 'post',
            sortName: 'returnTime',
            sortOrder: 'desc',
            remoteSort: true,
            //idField: 'dataJson',
            loadMsg: '数据加载中......',
            frozenColumns:[[
                {field:'ck',checkbox:true}
            ]],
            columns: [
                [
                    {
                        field: 'goodsCode',
                        title: '商品编码',
                        width: 150
                    },
                    {
                        field: 'goodsName',
                        title: '商品名称',
                        width: 150
                    },
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
                        field: 'attributeCode',
                        title: '属性編码',
                        width: 150
                    },
                    {
                        field: 'attributeValue',
                        title: '属性值',
                        width: 150
                    },
                    {
                        field: 'attributeStatus',
                        title: '属性生效状态',
                        width: 150,
                        formatter: function (value, rowData, rowIndex) {
                            // function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                            var useStatusName = '';
                            switch (value) {
                                case 0 :
                                    useStatusName = '无效';
                                    break;
                                case 1 :
                                    useStatusName = '有效';
                                    break;
                                default :
                                    useStatusName = '无';
                                    break;
                            }
                            return useStatusName;
                        }
                    },
                    {
                        field: 'attrUserStatus',
                        title: '属性应用状态',
                        width: 150,
                        formatter: function (value, rowData, rowIndex) {
                            // function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                            var useStatusName = '';
                            switch (value) {
                                case 1 :
                                    useStatusName = '应用中';
                                    break;
                                case 2 :
                                    useStatusName = '已应用';
                                    break;
                                default :
                                    useStatusName = '未应用';
                                    break;
                            }
                            return useStatusName;
                        }
                    },
                    {
                        field: 'ruleFlag',
                        title: '是否创建规则',
                        width: 150,
                        formatter: function (value, rowData, rowIndex) {
                            // function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                            if (value == 1) {
                                return '是';
                            } else {
                                return '否';
                            }
                        }
                    },
                    {
                        field: 'ruleRecalcState',
                        title: '规则是否重算',
                        width: 150,
                        formatter: function (value, rowData, rowIndex) {
                            // function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                            if (value == 1) {
                                return '是';
                            } else {
                                return '否';
                            }
                        }
                    },
                    {
                        field: 'ruleDownStatus',
                        title: '规则下传状态',
                        width: 150,
                        formatter: function (value, rowData, rowIndex) {
                            // function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                            var statusName = '';
                            switch (value) {
                                case 1 :
                                    statusName = '属性规则下传中';
                                    break;
                                case 2 :
                                    statusName = '属性规则下传完毕';
                                    break;
                                default :
                                    statusName = '未下传';
                                    break;
                            }
                            return statusName;
                        }
                    }



                    /*,
                    {
                        field: 'attrDownStatus',
                        title: '创建下传状态',
                        width: 150,
                        formatter: function (value, rowData, rowIndex) {
                            // function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                            var statusName = '';
                            switch (value) {
                                case 1 :
                                    statusName = '创建属性下传中';
                                    break;
                                case 2 :
                                    statusName = '创建属性下传完毕';
                                    break;
                                default :
                                    statusName = '未下传';
                                    break;
                            }
                            return statusName;
                        }
                    }*/,
                    {
                        field: 'operatorName',
                        title: '应用人',
                        width: 130
                    },
                    {
                        field: 'operatorDate',
                        title: ' 应用时间',
                        width: 180,
                        formatter: function (value, rowData, rowIndex) {
                            if (value == null) {
                                return '';
                            }
                            return timeStamp2String(value);
                        }
                    },
                    {
                        field: 'invalidErp',
                        title: '作废人',
                        width: 130
                    },
                    {
                        field: 'invalidDate',
                        title: '作废时间',
                        width: 180,
                        formatter: function (value, rowData, rowIndex) {
                            if (value == null) {
                                return '';
                            }
                            return timeStamp2String(value);
                        }
                    },
                    {field:'caozuo',title:'操作',width:120,
                        formatter:function(value,rowData,rowIndex){

                            var goodsCode=rowData.goodsCode;
                            var attribute=rowData.attributeCode;
                            //function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                            return "<a href='javascript:recalc(\""+goodsCode+"\",\""+attribute+"\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text' style='padding-left: 20px;'>"+"重算"+"</span></span></a>"
                        }
                    }
                ]
            ],
            pagination: true,
            rownumbers: true,
            toolbar: [
                /*{
                    id: 'btnadd',
                    text: '应用属性',
                    iconCls: 'icon-ok',
                    handler: function () {
                        attributeUse();
                    }
                },
                '-',*/
                {
                    id: 'btncut',
                    text: '作废应用',
                    iconCls: 'icon-no',
                    handler: function () {
                        delAttributes();
                    }
                },
                {
                    id: 'btnadd',
                    text: '导出',
                    iconCls: 'icon-ok',
                    handler: function () {
                        exportInfo();
                    }
                }
            ]
        });
}
/**
 * 导出变更日志
 */
function exportInfo(){
    jqm.confirm({
        w:400,
        title:'提示',
        type:'attention',
        content:'<h4>确定导出？</h4>',
        self:self,
        onConfirm:function(){
            var m = document.forms[0];
            var action = m.action;
            m.action = "/attributeuse/exportExcelSku";

            m.submit();
            m.action = action;
        }
    });
}
function attributeUse(){
    var rows = $('#ordertable').datagrid('getSelections');
    if(rows.length == 0){
        Commons.showWarn("请勾选未应用的三级品类，应用属性");
        return false ;
    }
    var datas = new Array();
    for(var i = 0 ; i < rows.length ; i++){
        if(rows[i].attrUserStatus != 0 && rows[i].attrUserStatus != null){
            Commons.showWarn("勾选项中包括已应用的三级品类，请取消");
            return false ;
        }
        if(rows[i].attributeStatus == 0){
            Commons.showWarn("请勾选属性生效状态为有效的属性，进行应用属性");
            return false ;
        }
        var dataObject = new Object();
        dataObject.attributeCode = rows[i].attributeCode;
        dataObject.attributeName = rows[i].attributeName ;
        dataObject.oneLevelId = rows[i].oneLevelId ;
        dataObject.oneLevelName = rows[i].oneLevelName ;
        dataObject.twoLevelId = rows[i].twoLevelId ;
        dataObject.twoLevelName = rows[i].twoLevelName ;
        dataObject.thrLevelId = rows[i].thrLevelId ;
        dataObject.thrLevelName = rows[i].thrLevelName ;
        dataObject.attrUserStatus = 1 ;
        dataObject.attrDownStatus = 0 ;
        dataObject.ruleDownStatus = 0 ;
        datas.push(dataObject);
    }
    jqm.confirm({
        w:400,
        title:'警告',
        type:'attention',
        content:'<h4>是否要应用属性到对应的三级品类？</h4>',
        self:self,
        onConfirm:function(){
            var rndJqmId = 'deleteAttrConfigLoading';
            jqm.loading({
                jqmId: rndJqmId,
                size: 48,
                content: ''
            });
            jQuery.ajax({
                type : 'POST',
                url : '/attributeuse/useAttribute.json',
                data : {
                    "attributeJson" : JSON.stringify(datas)
                },
                success : function(data){
                    if(data){
                        Commons.showSuccess("操作成功！");
                        queryAttributeList();
                        $('#ordertable').datagrid('clearSelections');
                        //$("#ordertable").datagrid('reload');
                    }else{
                        Commons.showSuccess("操作失败！");
                    }
                    $("#" + rndJqmId).jqmHide();
                },
                error:function(){
                    Commons.showError("系统异常！");
                    $("#" + rndJqmId).jqmHide();
                }
            });
        }
    });
}

//删除商品属性
function delAttributes(){
    var rows = $('#ordertable').datagrid('getSelections');
    if(rows.length == 0){
        Commons.showWarn("请勾选已应用的三级品类，作废应用");
        return false ;
    }
    var datas = new Array();
    for(var i = 0 ; i < rows.length ; i++){
        if(!(rows[i].attrUserStatus == 2)){
            Commons.showWarn("勾选项中包括未应用、应用中的三级品类，请取消");
            return false ;
        }
        if(rows[i].ruleFlag == 1&&rows[i].ruleDownStatus!=2){
            Commons.showWarn("勾选的属性包括，正在下传的无法取消！");
            return false ;
        }
        var dataObject = new Object();
        dataObject.attributeDownloadId = rows[i].attributeDownloadId;
        datas.push(dataObject);
    }
    jqm.confirm({
        w:400,
        title:'警告',
        type:'attention',
        content:'<h4>是否作废应用属性到对应的三级品类？</h4>',
        self:self,
        onConfirm:function(){
            var rndJqmId = 'deleteAttrConfigLoading';
            jqm.loading({
                jqmId: rndJqmId,
                size: 48,
                content: ''
            });
            jQuery.ajax({
                type : 'POST',
                url : '/attributeuse/invalidAttributeSku.json',
                data : {
                    "idJson" : JSON.stringify(datas)
                },
                success : function(data){
                    if(data){
                        Commons.showSuccess("操作成功！");
                        queryAttributeList();
                        $('#ordertable').datagrid('clearSelections');
                    }else{
                        Commons.showSuccess("操作失败！");
                    }
                    $("#" + rndJqmId).jqmHide();
                },
                error:function(){
                    Commons.showError("系统异常！");
                    $("#" + rndJqmId).jqmHide();
                }
            });
        }
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


//查询商品属性
function queryAttributeList() {
    $('#ordertable').datagrid('options').url = '/attributeuse/loadAttributebyclassify_sku.json';
//    //为loadGrid()添加参数
    var queryParams = $('#ordertable').datagrid('options').queryParams;
    queryParams.attributeCode = $('#attributeCode').val();
    queryParams.attributeUseStatus =-1;// $('#attrUseStatus').val();
    queryParams.attrDownStatus =-1;// $('#attrDownStatus').val();
    queryParams.ruleDownStatus = $('#ruleDownStatus').val();
    queryParams.oneLevelClassify = $('#categoryOne').val();
    queryParams.twoLevelClassify = $('#categoryTwo').val();
    queryParams.threeLevelClassify = $('#categoryThree').val();
    queryParams.attributeStatus = $('#attributeStatus').val();
    queryParams.goodsCode = $('#goodsCode').val();
    queryParams.goodsName = $('#goodsName').val();
    queryParams.attributeType = $("#attributeCodeType").val();

    if(queryParams.goodsCode==''&&queryParams.goodsName==''&&
        queryParams.attributeCode==-1&&queryParams.attributeStatus==-1/*&&queryParams.attrDownStatus==-1*/
        &&queryParams.ruleDownStatus==-1&&queryParams.oneLevelClassify==-1&&queryParams.twoLevelClassify==-1
        &&queryParams.threeLevelClassify==-1){
        Commons.showError("查询条件为空！");
        return ;
    }

//    queryParams.rulestate = $('#rulestate').val();
    //重新加载datagrid的数据
    $("#ordertable").datagrid('load');
}