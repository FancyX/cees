$(function(){
    //初始化表格
    loadGrid();
    //已提交列表初始化
    alreadyLoadGrid();
    //屏蔽回车事件
    document.onkeydown = function () {
        if (window.event && window.event.keyCode == 13) {
            window.event.returnValue = false;
        }
    }
});

//列表初始化
function loadGrid(){
    $('#ordertable').datagrid({
        loadFilter:function(data)
        {
            if(data.total == 0)
            {
                Commons.showInfo("该SKU的" + $("#attributeType").find('option:selected').text() + "已全部设置完毕！");
            }
            return data;
        }  ,
        width:500,
        height:210,
        nowrap: true,
        striped: true,
        collapsible:true,
        url:null,
        method:'post',
        singleSelect: false,
        selectOnCheck: true,
        checkOnSelect: true,
        sortName: 'returnTime',
        sortOrder: 'desc',
        remoteSort: true,
        idField:'attributeCode',
        loadMsg:'数据加载中......',
        columns:[[
            {field:'ck',checkbox:true},
            {field:'attributeType',title:'属性分类',width:130,
                formatter:function(value,rowData,rowIndex){
                    var result = '';
                    if(0==value){
                        return "基本属性";
                    }else if(1==value){
                        return "扩展属性";
                    }else if(2==value){
                        return "仓储属性";
                    }else if(3==value){
                        return "物流属性";
                    }
                }
            },
            {field:'attributeName',title:'属性名称',width:310}
        ]],
        onUnselect:function(){
            clearCheckBox();
        },
        onSelect:function(){
            setAllChecked();
        },
        pagination:false
    });
}
//删除记录
function toDelete(){
    var row = $('#ordertable1').datagrid('getSelected');
    var index = $('#ordertable1').datagrid('getRowIndex', row);
    $('#ordertable1').datagrid('deleteRow',index);
}

//已提交列表初始化
function alreadyLoadGrid(){
    $('#ordertable1').datagrid({
        width:500,
        height:210,
        nowrap: true,
        striped: true,
        collapsible:true,
        url:null,
        method:'post',
        singleSelect:true,
        sortName: 'returnTime',
        sortOrder: 'desc',
        remoteSort: true,
        idField:'id',
        loadMsg:'数据加载中......',
        columns:[[
            {field:'attributeCode',title:'属性编码',width:80},
            {field:'attributeType',title:'属性分类',width:140,
                formatter:function(value,rowData,rowIndex){
                    var result = '';
                    if(0==value){
                        return "基本属性";
                    }else if(1==value){
                        return "扩展属性";
                    }else if(2==value){
                        return "仓储属性";
                    }else if(3==value){
                        return "物流属性";
                    }
                }},
            {field:'attributeName',title:'属性名称',width:190},
            {field:'变动记录',title:'操作',width:68,
                formatter:function(value,rowData,rowIndex){
                    //function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                    return "<a href='javascript:toDelete()' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-edit' style='padding-left: 20px;'>"+"删除"+"</span></span></a>";
                }
            }
        ]],
        pagination:false
    });
}

//查询商品属性
function queryAttributeList(){
    $("input[type='checkbox']").attr("checked",false);
    $('#ordertable').datagrid('clearSelections');
    $('#ordertable').datagrid('options').url='/collectattributeconfigsku/queryattribute.json';
    //为loadGrid()添加参数
    var queryParams = $('#ordertable').datagrid('options').queryParams;
    queryParams.attributeType = $('#attributeType').val();
    queryParams.goodsCode = $('#goodsCode').val();
    if(null==queryParams.goodsCode||queryParams.goodsCode ==''){
        Commons.showWarn("请先输入商品编码再进行查询");
        return false;
    }
    //alert(queryParams.attributeType);
    //重新加载datagrid的数据
    $("#ordertable").datagrid('load');
    //清空已提交列表
    //$('#ordertable1').datagrid('loadData', { total: 0, rows: [] });
}

//向提交列表插入数据
function insertAlreadlyGoodInfo(){
    var rows = $('#ordertable').datagrid('getSelections');
    var rowData = $('#ordertable1').datagrid('getRows');
    if(rows.length>0){
        for(var i=0;i<rows.length;i++){
            var isSame = false;
            if(rowData.length>0){
                for(var a=0;a<rowData.length;a++){
//                    alert(rowData[a].id==rows[i].id);
                    if(rowData[a].attributeCode==rows[i].attributeCode){
                        isSame = true;
                        Commons.showInfo("此属性已经提交到采集列表！")
                        break;
                    }
                }
                if(!isSame){
                    $('#ordertable1').datagrid('insertRow', {
                        index: 0,
                        row: {attributeCode:rows[i].attributeCode,attributeType:rows[i].attributeType,attributeName:rows[i].attributeName}
                    });
                }
            }else{
                $('#ordertable1').datagrid('insertRow', {
                    index: 0,
                    row: {attributeCode:rows[i].attributeCode,attributeType:rows[i].attributeType,attributeName:rows[i].attributeName}
                });
            }
        }
    }else{
        Commons.showInfo("请选择要提交的属性！");
    }
}
//提交采集任务信息
function saveCollectAC(){
    var goodsCode = $("#goodsCode").val();

    if(null==goodsCode||goodsCode==""){
        Commons.showWarn("请输入商品编码！");
        return false;
    }
    var attrContJsonStr = '';
    var rowData = $('#ordertable1').datagrid('getRows');
    if(rowData.length>=1){

        for(var i= 0;i<rowData.length;i++){
            attrContJsonStr += rowData[i].attributeCode+',';
        }
        attrContJsonStr = attrContJsonStr.substring(0,attrContJsonStr.lastIndexOf(','));
    }else{
        Commons.showWarn("无以提交内容!");
        return false;
    }
    var rndJqmId = 'saveCollectAC';
    jqm.loading({
        jqmId: rndJqmId,
        size: 48,
        content: ''
    });
    jQuery.ajax({
        type : 'POST',
        data :
        {
            code:goodsCode,
            jsonStr:attrContJsonStr
        },
        url : '/collectattributeconfigsku/addCollectAttributeConfigSku',
       /* success : function(data){
            if(data==true){
                Commons.showSuccess("操作成功！", 300,function(){ window.location.href="initAddPage?a="+Math.random()*10+1; });
            }else if(data==false){
                Commons.showError("操作失败！");
            }else{
                Commons.showSuccess(data);
            }
            $('#' + rndJqmId).jqmHide();
        }*/
        success : function(data){
            if(data.result == true){
                if(data.resultForSDSendFalse == true){
                    Commons.showSuccess("采集属性保存成功，但下发接口异常！", 300,function(){ window.location.href="initAddPage?a="+Math.random()*10+1; });
                } else if(data.resultFor == 1){
                    Commons.showSuccess("操作成功！", 300,function(){ window.location.href="initAddPage?a="+Math.random()*10+1; });
                } else if(data.resultFor != 1){
                    Commons.showSuccess("采集属性保存成功，但下发失败！", 300,function(){ window.location.href="initAddPage?a="+Math.random()*10+1; });
                }
            }else {
                Commons.showError("操作失败！");
            }
            $('#' + rndJqmId).jqmHide();
        }
    });
}
//datagrid取消全选
function clearCheckBox(){
    $('#ordertable').parent().find("div .datagrid-header-check").children("input[type='checkbox']").eq(0).attr("checked", false);
}
//设置全选
function setAllChecked(){
    var selectedData = $('#ordertable').datagrid('getSelections');
    var rowData = $('#ordertable').datagrid('getRows');
    if(selectedData.length == rowData.length){
        $('#ordertable').parent().find("div .datagrid-header-check").children("input[type='checkbox']").eq(0).attr("checked", true);
    }
}
$(document).ready(
    function () {
        $("#goodsCode").blur(function(){
            var goodsCode = $("#goodsCode").val();
            $('#ordertable').datagrid('loadData',[]);
        	$('#ordertable1').datagrid('loadData',[]);
            if(null== goodsCode||goodsCode==""){
                Commons.showWarn("请输入商品编码");
                $("#goodsName").html('');
                return ;
            }
//            $("#goodsName").html(null);
            jQuery.ajax({
                type:'POST',
                url: '/collectattributeconfigsku/queryGoodsName.json',
                data:
                {
                    "goodsCode":goodsCode
                },
                success:function(data){
                    var goodsName = data.goodsInfo.goodsName;
                    if(null != goodsName){
//                        alert(goodsName);
                        $("#goodsName").html(goodsName);
                    }else{
                        Commons.showWarn("此商品不存在，请重新输入商品编码");
                        $("#goodsCode").val('');
//                        alert("此商品不存在，请重新输入商品编码");
//                        $("#goodsCode").focus();
                    }
                }

            });
        });

    }
);

