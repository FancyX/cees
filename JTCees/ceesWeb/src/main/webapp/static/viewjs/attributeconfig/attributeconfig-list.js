$(function(){
    //表格初始化
    loadGrid();
});
//列表初始化
function loadGrid(){
    $('#ordertable').datagrid({
        width:990,
        height:410,
        nowrap: true,
        striped: true,
        collapsible:true,
        url:null,
        method:'post',
        sortName: 'returnTime',
        sortOrder: 'desc',
        remoteSort: true,
        idField:'id',
        loadMsg:'数据加载中......',
        columns:[[
            {field:'attributeName',title:'属性名称',width:105},
            {field:'storeFlag',title:'适用范围',width:80,
                formatter:function(value,rowData,rowIndex){
                    var result = '';
                    result = value.replace('1', '大货仓');
                    result = result.replace('2', '中小件仓');
                    result = result.replace('3', '图书仓');
                    return result;
                }
            },
            {field:'updateLevel',title:'更新级别',width:60,
                formatter:function(value,rowData,rowIndex){
                    if(0==value){
                        return "集团更新";
                    }else if(1==value){
                        return "库房更新";
                    }else if(2==value){
                        return "ERP更新";
                    }
                }
            },
            {field:'attributeScope',title:'单仓属性',width:60,
                formatter:function(value,rowData,rowIndex){
                    if(0==value){
                        return "单仓";
                    }else if(1==value){
                        return "全部";
                    }
                }
            },
            {field:'enable',title:'是否有效',width:60,
                formatter:function(value,rowData,rowIndex){
                    if(0==value){
                        return "无效";
                    }else if(1==value){
                        return "有效";
                    }
                }
            },
            {field:'createTime',title:'新建时间',width:140,
                formatter:function(value,rowData,rowIndex){
                    return timeStamp2String(value);
                }
            },
            {field:'createPin',title:'新建人',width:80},
            {field:'updateTime',title:'更新时间',width:140,
                formatter:function(value,rowData,rowIndex){
                    return timeStamp2String(value);
                }
            },
            {field:'updatePin',title:'更新人',width:80},
            {field:'变动记录',title:'操作',width:120,
                formatter:function(value,rowData,rowIndex){
                    //function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                    if(rowData.enable==0){
                        return "";
                    }else if(rowData.updateLevel==2){
                        return "<a href='javascript:delAttributes(\""+rowData.id+"\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"+"无效"+"</span></span></a>";
                    }else{
                        return "<a href='javascript:toModify(\""+rowData.id+"\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-edit' style='padding-left: 20px;'>"+"修改"+"</span></span></a><a href='javascript:delAttributes(\""+rowData.id+"\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"+"无效"+"</span></span></a>";
                    }
                }
            }
        ]],
        pagination:true,
        rownumbers:true
    });
}

//跳转到修改页面
function toModify(id){
    window.open("modify?id="+id+"&"+new Date());
}

//时间格式化
function timeStamp2String(time){
    var datetime = new Date();
    datetime.setTime(time);
    var year = datetime.getFullYear();
    var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;
    var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();
    var hour = datetime.getHours()< 10 ? "0" + datetime.getHours() : datetime.getHours();
    var minute = datetime.getMinutes()< 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();
    var second = datetime.getSeconds()< 10 ? "0" + datetime.getSeconds() : datetime.getSeconds();
    return year + "/" + month + "/" + date+" "+hour+":"+minute+":"+second;
}

//查询商品属性
function queryAttributeList(){

    if(!$("input[id$=StoreFlag]:checked").length) {
        Commons.showWarn("请选择适用范围");
        return;
    }
    $('#ordertable').datagrid('options').url='/attributeconfig/queryattribute.json';
    //为loadGrid()添加参数
    var queryParams = $('#ordertable').datagrid('options').queryParams;
    queryParams.attributeName = $('#attributeName').val();
    var bigStoreFlag=0;//大货仓
    var middleStoreFlag=0;//中小件
    var bookStoreFlag=0;//图书仓
    $('input[name="bigStoreFlag"]:checked').each(function(){
        bigStoreFlag = $(this).val();
    });
    $('input[name="middleStoreFlag"]:checked').each(function(){
        middleStoreFlag = $(this).val();
    });
    $('input[name="bookStoreFlag"]:checked').each(function(){
        bookStoreFlag = $(this).val();
    });
    queryParams.bigStoreFlag = bigStoreFlag;
    queryParams.middleStoreFlag = middleStoreFlag;
    queryParams.bookStoreFlag = bookStoreFlag;
    queryParams.updateLevel = $('#updateLevel').val();
    //重新加载datagrid的数据
    $("#ordertable").datagrid('load');
}

//删除商品属性
function delAttributes(id){
    if(id == ''||id == null){
//            Commons.showWarn("请选择一条要删除的信息");
        Commons.showWarn("请选择一条要改为无效的属性");
    }else{
        jqm.confirm({
            w:400,
            title:'警告',
            type:'attention',
//                content:'<h4>是否确认要删除该商品信息？</h4>',
            content:'<h4>是否将此属性设置为无效？</h4>',
            self:self,
            onConfirm:function(){
                jQuery.ajax({
                    type : 'POST',
                    url : '/attributeconfig/deleteAttributes?id='+id,

                    success : function(data){
                        if(data){
                            Commons.showSuccess("操作成功！");
                            $("#ordertable").datagrid('reload');
                        }else{
                            Commons.showSuccess("操作失败！");
                        }
                    },
                    error:function(){
                        Commons.showError("系统异常！");
                    }

                });
            }
    });
    }
}