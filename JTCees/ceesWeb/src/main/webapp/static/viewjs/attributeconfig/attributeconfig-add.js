$(function(){
    //列表初始化
    loadGrid();
    //默认插入一行
    $('#ordertable').datagrid('insertRow', {
            index: 0,
            row: {content:''}
    });
    changeUpdateLevel();
    changeAttributeScope();
    //单选按钮操作
    radioFun();
    $("#attributeType").bind('change',function(e) {
        var value = $(this).val() ;
        if(value == 2) {
            $("input[name=attributeScope][value='0']").removeAttr("disabled");
        } else {
            $("input[name=attributeScope][value='0']").attr("disabled","disabled");
        }
    });
});
//列表初始化
function loadGrid(){
    $('#ordertable').datagrid({
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
            {field:'content',title:'属性值',width:140,editor:'text'},
            {field:'name',title:'显示内容',width:173,editor:'text'},
            {field:'变动记录',title:'操作',width:120,
                formatter:function(value,rowData,rowIndex){
                    //function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                    return "<a href='javascript:toDelete()' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-edit' style='padding-left: 20px;'>"+"删除"+"</span></span></a>";
                }
            }
        ]],
        pagination:false,
        rownumbers:true,
        onClickCell: function (rowIndex, field, value) {
            beginEditing(rowIndex, field, value)
        },
        onBeforeEdit:function(index,row) {
            if(row.content) {
                row.content = row.content.replace(/&amp;/g,'&').replace(/&gt;/g,'>').replace(/&lt;/g,'<').replace(/&quot;/g,'"');
            }
        }

    });
}

var editIndex = undefined;
//列表行编辑函数
var beginEditing = function (rowIndex, field, value) {
    if (field != "content"&& field !="name")
        {return;}

    if (rowIndex != editIndex) {
        if (endEditing()) {
            $('#ordertable').datagrid('beginEdit', rowIndex );
            editIndex = rowIndex;

            var ed = $('#ordertable').datagrid('getEditor', { index: rowIndex, field:field });
            $(ed.target).focus().bind('blur', function () {
                endEditing(field);
            });
        } else {
            $('#ordertable').datagrid('selectRow', editIndex);
        }
    }
}
//列表行编辑函数
var endEditing = function (field) {
    if (editIndex == undefined) { return true }
    if ($('#ordertable').datagrid('validateRow', editIndex)) {
        var ed = $('#ordertable').datagrid('getEditor', { index: editIndex, field: field });
//            var number = $(ed.target).text('getValue');
        var number = ed.target.val();


        var escapeHTML = $('#ordertable').datagrid("getEditors",editIndex)[0].target.val();
        escapeHTML = escapeHTML.replace(/&/g,'&amp;').replace(/>/g,'&gt;').replace(/</g,'&lt;').replace(/"/g,'&quot;');
        $('#ordertable').datagrid("getEditors",editIndex)[0].target.val(escapeHTML);
        $('#ordertable').datagrid('getRows')[editIndex][field] = number;
        $('#ordertable').datagrid('endEdit', editIndex);
        $('#ordertable').datagrid('selectRow', editIndex);
        editIndex = undefined;
        if(null!=number&&''!=number){
            // 判断是否重复
            var rowData = $('#ordertable').datagrid('getRows');
            var rowNow = $('#ordertable').datagrid('getSelected');
            var index = $('#ordertable').datagrid('getRowIndex', rowNow);
            if (rowData.length >= 1) {
                for ( var i = rowData.length-1; i >=0; i--) {
                    if(i==index){
                        continue;
                    }
                    if (number == rowData[i].content) {
                        Commons.showError("该内容已经添加!");
                        $('#ordertable').datagrid('deleteRow',index);
                        var rowLength = $('#ordertable').datagrid('getRows').length-1;
                        var temp = $('#ordertable').datagrid('getRows')[rowLength][field];
                        if(null==temp||''==temp){
                            return true;
                        }
                        var allData = $('#ordertable').datagrid('getRows');
                        $('#ordertable').datagrid('insertRow', {
                            index: allData.length+1,
                            row: {field:''}
                        });
                        return false;
                    }
                }
            }
            var rowLength = $('#ordertable').datagrid('getRows').length-1;
            var temp = $('#ordertable').datagrid('getRows')[rowLength][field];
            if(null==temp||''==temp){
                return true;
            }
            var allData = $('#ordertable').datagrid('getRows');
            $('#ordertable').datagrid('insertRow', {
                index: allData.length+1,
                row: {field:''}
            });
        }
        return true;
    } else {
        return false;
    }
}

//删除记录
function toDelete(){
    var row = $('#ordertable').datagrid('getSelected');
    if(''==row.content){
        return;
    }else{
        var index = $('#ordertable').datagrid('getRowIndex', row);
        $('#ordertable').datagrid('deleteRow',index);
    }
}

//提交表单
function subForm(){
    //校验表单
    var validator1 = $('#form1').validate(formValidator);
    var validator3 = $('#form3').validate(formValidator);
    var validator5 = $('#form5').validate(formValidator);
    //修复单位错误提示一直显示bug
    if($("#unit").nextAll("span").size() == 2){
        $("#unit").next("span").remove();
    }
    var form1 = validator1.form();
    var form3 = validator3.form();
    var form5 = validator5.form();
    if(!form1||!form3||!form5){
        return false;
    }
    //属性名称
    var attributeName = $('#attributeName').val();
        if(!isChina(attributeName)){  //验证属性名称是否全部为中文
        Commons.showWarn("属性名必须为中文");
        return false;
    }

    //是否验证
    var checkFlag = $("input[name='checkFlag']:checked").val();
    //更新级别
    var updateLevel = $('#updateLevel').val();
    //属性类型
    var attributeType = $('#attributeType').val();
    //属性范围
    var attributeScope = $("input[name='attributeScope']:checked").val();
    //单位
    var unit = $('#unit').val();
    //说明
    var note = $('#note').val();
    //显示类型
    var showType=$("input[name='showType']:checked").val();
    var operationManagerFlag=$("input[name='operationManagerFlag']:checked").val();
    var centerExamineFlag=$("input[name='centerExamineFlag']:checked").val();
    var attrContJsonStr = '';
    if(1==showType){
        var rowData = $('#ordertable').datagrid('getRows');
        if(rowData.length>=2){
            //授权JSON字符串拼接
            attrContJsonStr = '';

            for(var i= 0;i<rowData.length;i++){
                var contentIsNotNull =  rowData[i].content !="" && rowData[i].content !=undefined;
                var  nameIsNotNull =   rowData[i].name !="" && rowData[i].name != undefined;
                if( contentIsNotNull && nameIsNotNull )
                {
                    attrContJsonStr += '{"content":"'+rowData[i].content+'","name":"'+rowData[i].name+'"}_';
                }
                else if(!(i  == rowData.length-1 && !contentIsNotNull && !nameIsNotNull) )
                {
                    Commons.showWarn("请填正确输入内容");
                    return false;
                }
            }
            attrContJsonStr = attrContJsonStr.substring(0,attrContJsonStr.lastIndexOf('_'));
        }else{
            Commons.showWarn("请填写属性内容");
            return false;
        }
        $("input[name='attrContJsonStr']").attr("value", attrContJsonStr);
    }
    //大货仓
    var storeFlag=1;
    var rndJqmId = 'addAttrConfigLoading';
    jqm.loading({
        jqmId: rndJqmId,
        size: 48,
        content: ''
    });
    jQuery.ajax({
        type : 'POST',
        data :
        {
           "attributeName":attributeName,
           "storeFlag":storeFlag,
           "unit":unit,
           "operationManagerFlag":operationManagerFlag,
           "checkFlag":checkFlag,
            "updateLevel":updateLevel,
            "attributeType":attributeType,
            "attributeScope":attributeScope,
            "note":note,
            "showType":showType,
            "enable":1,
            "attrContJsonStr":attrContJsonStr
        },
        url : '/attributeconfig/addAttributeContent',
        success : function(data){
            if(data=="true"){
                Commons.showSuccess("操作成功！", 300,function(){
                    $('#attributeName').val("");
                    $('#bigStoreFlag').attr("checked", false);
                    $('#middleStoreFlag').attr("checked", false);
                    $('#bookStoreFlag').attr("checked", false);
                    $('#updateLevel').val("0");
                    $('#attributeType').val("0");
                    $("input[name='attributeScope']").each(function(){
                        if($(this).val()==1){
                            $(this).attr("checked", true);
                        }
                    });
                    $("input[name='operationManagerFlag']").each(function(){
                        if($(this).val()==1){
                            $(this).attr("checked", true);
                          }
                    });
                    $("input[name='checkFlag']").each(function(){
                        if($(this).val()==1){
                            $(this).attr("checked", true);
                        }
                    });
                    $('#note').val("");
                    $('#unit').val("");
                    $("#unit").removeClass("error");
                    $("#unit").next("span").hide();
                    $("input[name='showType']").each(function(){
                        if($(this).val()==1){
                            $(this).attr("checked", true);
                        }
                    });
                    $('#table').attr("style","display:");
                    $('#ordertable').datagrid('loadData', { total: 0, rows: [] });
                    //默认插入一行
                    $('#ordertable').datagrid('insertRow', {
                            index: 0,
                            row: {content:''}
                    });
                    location.reload(true);
                });
            }else if(data=="false"){
                Commons.showError("操作失败！");
            }else{
                Commons.showWarn("商品属性名称重复");
            }
            $("#" + rndJqmId).jqmHide();
        }
    });
    return true;
}

//单选按钮操作
function radioFun(){
    var showType=$("input[name='showType']:checked").val();
    if(showType == 0){
//            $('#ordertable').datagrid('hideColumn','content');  //隐藏特定列
//            $('#table').attr("style","display:none");
        $('#table').css("display","none");
    }
    else{
//            $('#table').attr("style","display:");
        $('#table').css("display","block");
    }
}

//新增
function newAddAttrCont(){
        $('#ordertable').datagrid('insertRow', {
            index: 0,
            row: {content:11}
    });
    $('#content').val("");
}

/**
 * 更新级别为“集团更新”时，属性范围默认选中“全部”且不可修改
 */
function changeUpdateLevel(){
    var updatelevel = $('#updateLevel').val();
    if(updatelevel == 1){//更新级别为“集团更新”
        if($("#attributeType").val() == 2)
            $("input[name='attributeScope'][value='0']").attr("disabled",false);
        $("input[name='attributeScope'][value='1']").attr("disabled",false);
    } else {
        $("input[name='attributeScope'][value='1']").attr("checked",true);
        $("input[name='attributeScope'][value='0']").attr("disabled",true);
        $("input[name='attributeScope'][value='1']").attr("disabled",false);
    }
}
/**
 *  属性范围为“单仓”时，更新级别默认选中“库房更新”且不可修改
 */
function changeAttributeScope(){
    var attributeScope = $("input[name='attributeScope']:checked").val();
    if(attributeScope == 0){//属性范围为“单仓”
        $("#updateLevel option[value='1']").attr("selected",true);
        $("input[name='checkFlag'][value='0']").attr("checked",true);
        $("input[name='checkFlag'][value='1']").attr("disabled",true);
        $("#attributeType").attr("disabled",true);
        $("#updateLevel").attr("disabled",true);
    } else {
        $("#updateLevel").attr("disabled",false);
        $("#attributeType").attr("disabled",false);
        $("input[name='checkFlag'][value='1']").attr("disabled",false);
    }
}

function isChina(s) //判断字符是否是中文字符
{
   var patrn=  /^[\u4E00-\u9FA5]+$/;
   if (!patrn.test(s))
    {
      return false;
    }else{
      return true;
     }
}
/**
 * 修复单位错误提示不消失bug
 */
function cleanUnitValidate(){
    var obj = $("#unit").val();
    if(obj && obj != ""){//输入域非空
        $("#unit").removeClass("error");
        $("#unit").nextAll("span").hide();
    } else {
        $("#unit").nextAll("span").show();
        if($("#unit").next("span").hasClass("errorCon")){
            $("#unit").addClass("error");
        }
    }
}