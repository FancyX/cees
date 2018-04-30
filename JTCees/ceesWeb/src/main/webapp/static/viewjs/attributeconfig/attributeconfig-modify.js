$(function(){
    //获取范围字符串
    var storeFlag = $('#storeFlagTem').val();
    var storeFlags = storeFlag.split(",");
    for(var i=0;i<storeFlags.length;i++){
        if(1==storeFlags[i]){
            //大货仓
            $('input[name="bigStoreFlag"]').each(function(){
                    $(this).attr("checked", true);
            });
        }else if(2==storeFlags[i]){
            //中小件
            $('input[name="middleStoreFlag"]').each(function(){
                    $(this).attr("checked", true);
            });
        }else if(3==storeFlags[i]){
            //图书仓
            $('input[name="bookStoreFlag"]').each(function(){
                    $(this).attr("checked", true);
            });
        }
    }
    //更新级别
    $('#updateLevel').val($('#updateLevelTem').val());
    if($('#updateLevelTem').val() != 1){
        $("input[name='attributeScope'][value='1']").attr("checked",true);
        $("input[name='attributeScope'][value='0']").attr("disabled",true);
        $("input[name='attributeScope'][value='1']").attr("disabled",false);
    }
    //属性类型
    $('#attributeType').val($('#attributeTypeTem').val());
    //属性范围
    $('input[name="attributeScope"]').each(function(){
        if($('#attributeScopeTem').val()==1&&$(this).val()==1){
            $(this).attr("checked", true);
        }else if($('#attributeScopeTem').val()==0&&$(this).val()==0){
            $(this).attr("checked", true);
            $("#updateLevel").attr("disabled",true);
        }
    });
    $('input[name="operationManagerFlag"]').each(function(){
        if($('#operationManagerFlagTem').val()==1&&$(this).val()==1){
            $(this).attr("checked", true);
        }else if($('#operationManagerFlagTem').val()==0&&$(this).val()==0){
            $(this).attr("checked", true);
        }
    });
    //是否校验
    $('input[name="checkFlag"]').each(function(){
        if($('#checkFlagTem').val()==1&&$(this).val()==1){
            $(this).attr("checked", true);
        }else if($('#checkFlagTem').val()==0&&$(this).val()==0){
            $(this).attr("checked", true);
        }
    });
    //说明
    $('#note').val($('#noteTem').val());
    //显示类型
    $('input[name="showType"]').each(function(){
        if($('#showTypeTem').val()==1&&$(this).val()==1){
            $(this).attr("checked", true);
        }else if($('#showTypeTem').val()==0&&$(this).val()==0){
            $(this).attr("checked", true);
        }
    });
    //$('#unit').val("$goodAttribute.unit");
    //初始化
    loadGrid();
    $('#ordertable').datagrid('options').url='/attributeconfig/showattrcontent.json';
    var queryParams = $('#ordertable').datagrid('options').queryParams;
    //queryParams.aid = $goodAttribute.id;
    queryParams.aid = $('#id').val();
    //重新加载datagrid的数据
    $("#ordertable").datagrid('load');
    //添加一行
    setTimeout("addline();",1000);//延时1秒


    $("#attributeType").bind('change',function(e) {
        var value = $(this).val() ;
        if(value == 2) {
            $("input[name=attributeScope][value=0]").removeAttr("disabled");
        } else {
            $("input[name=attributeScope][value=0]").attr("disabled","disabled");
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
        singleSelect:true,
        url:null,
        method:'post',
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
        }
    });
}
//添加一行
function addline(){
    var allData = $('#ordertable').datagrid('getRows');
    $('#ordertable').datagrid('insertRow', {
            index: allData.length+1,
            row: {content:''}
    });
    radioFun();
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
    //验证表单
    if($(document).find(".datagrid-row-editing").length)
        return;
    var validator1 = $('#form1').validate(formValidator);
    var validator2 = $('#form2').validate(formValidator);
    //修复单位错误提示一直显示bug
    if($("#unit").nextAll("span").size() == 2){
        $("#unit").next("span").remove();
    }
    var form1 = validator1.form();
    var form2 = validator2.form();
    if(!form1||!form2){
        return false;
    }
    //主键
    var id = $('#id').val();
    //属性名称
    var attributeName = $('#attributeName').val();
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
    var attrContJsonStr = '';
    //下拉列表拼JSON
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
            Commons.showWarn("请填写内容");
            return false;
        }
        $("input[name='attrContJsonStr']").attr("value", attrContJsonStr);
    }
    //适用范围
    var bigStoreFlag=0;
    var middleStoreFlag=0;
    var bookStoreFlag=0;
    $('input[name="bigStoreFlag"]:checked').each(function(){
        bigStoreFlag = $(this).val();
    });
    $('input[name="middleStoreFlag"]:checked').each(function(){
        middleStoreFlag = $(this).val();
    });
    $('input[name="bookStoreFlag"]:checked').each(function(){
        bookStoreFlag = $(this).val();
    });
    if((bigStoreFlag+middleStoreFlag+bookStoreFlag)==0){
        Commons.showWarn("请选择适用范围");
    }else{
        var rndJqmId = 'updateAttrConfigLoading';
        jqm.loading({
            jqmId: rndJqmId,
            size: 48,
            content: ''
        });
        jQuery.ajax({
            type : 'POST',
            data :
            {
               "id":id,
               "attributeName":attributeName,
               "bigStoreFlag":bigStoreFlag,
               "middleStoreFlag":middleStoreFlag,
               "bookStoreFlag":bookStoreFlag,
               "unit":unit,
               "operationManagerFlag":operationManagerFlag,
               "checkFlag":checkFlag,
                "updateLevel":updateLevel,
                "attributeType":attributeType,
                "attributeScope":attributeScope,
                "note":note,
                "showType":showType,
                "attrContJsonStr":attrContJsonStr
            },
            url : '/attributeconfig/updateAttrCont',

            success : function(data){
                if(data){
                   Commons.showSuccess("操作成功！", 300,function(){
                       opener.queryAttributeList();
                       window.close();

                   });
                }else{
                    Commons.showError("操作失败！", 300);
                }
                $("#" + rndJqmId).jqmHide();
            }
        });
       }
    return true;
}

//单选按钮操作
function radioFun(){
    var showType=$("input[name='showType']:checked").val();
    if(showType == 0){
//            $('#table1').attr("style","display:none");
        $('#table1').css("display","none");
    }
    else{
//            $('#table1').attr("style","display:");
        $('#table1').css("display","block");
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
