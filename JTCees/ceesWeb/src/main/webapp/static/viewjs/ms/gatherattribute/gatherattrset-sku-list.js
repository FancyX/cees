$(function(){
    //表格初始化
    loadGrid();

    $('#importWindow').jqm({
        closeClass: 'jqmClose',
        overlayClass: 'whiteOverlay',
        retrieveTop:function(){
            return 20;
        },
        movable: true
    });

    //绑定导入按钮单击事件
    $('#importData').click(function() {
        importData();
    });
});
//列表初始化
function loadGrid(){
    $('#ordertable').datagrid({
        width:990,
        height:390,
        nowrap: true,
        striped: true,
        collapsible:true,
        url:'/gatherattributeset/queryGatherAttributeList.json',
        queryParams:{isNotSku:0},
        method:'post',
        sortName: 'updateTime',
        sortOrder: 'desc',
        remoteSort: true,
        idField:'id',
        loadMsg:'数据加载中......',
        columns:[[
            {field:'sku',title:'商品编码',width:100},
            {field:'goodsName',title:'商品名称',width:150,formatter:function(value) {
                return '<div title="'+value+'">'+value+'</div>';
            }},
            {field:'attributeName',title:'属性名称',width:200},
            {field:'updatePin',title:'维护人',width:100},
            {field:'updateTime',title:'维护时间',width:200,
                formatter:function(value,rowData,rowIndex){
                    if(rowData.updateTime != null){
                        return new Date(rowData.updateTime).format("yyyy/MM/dd hh:mm");
                    }
                }
            },

            {field:'变动记录',title:'操作',width:150,
                formatter:function(value,rowData,rowIndex){
               //  return  "<a href='javascript:showDelete("+rowData.id+");'>删除</a>"
                    return  "<a href='javascript:showDelete(\""+rowData.id+"\")'style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"
                        + "删除" + "</span></span></a>"

                }
            }
        ]],
        pagination:true,
        rownumbers:true
    });
}
function  queryCollectAttributeConfigSku(){
    var validator = $('#form0').validate(formValidator);
    if(validator.form()){

        $('#ordertable').datagrid('options').url='/gatherattributeset/queryGatherAttributeList.json';
        //为loadGrid()添加参数
        var queryParams = $('#ordertable').datagrid('options').queryParams;
        queryParams.sku = $('#goodsCode').val();
        //alert(queryParams.goodsCode) ;
        if(null == queryParams.sku || queryParams.sku == ''){
            Commons.showWarn("请输入商品编码");
            return null;
        }
        $("#ordertable").datagrid('load');
    }
}
function showDelete(id){
    if(id == ''||id == null){
        Commons.showWarn("请选择一条要删除的信息");
    }else{
        jqm.confirm({
            w:400,
            title:'警告',
            type:'attention',
            content:'<h4>是否确认要删除该采集属性设置信息？</h4>',
            self:self,
            onConfirm:function(){
                jQuery.ajax({
                    type : 'POST',
                    url: '/gatherattributeset/deleteGatherAttributeSetInfo.json',
                    data: {
                        "id": id
                    },
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

function downloadImportTemplate(){
    jqm.confirm({
        w:400,
        title:'提示',
        type:'attention',
        content:'<h4>确定下载模板？</h4>',
        self:self,
        onConfirm:function(){
            var m = document.forms[0];
            var action = m.action;
            m.action = "/gatherattributeset/downloadImportTemplate";
            m.submit();
            m.action = action;
        }
    });
}

/**
 * 打开导入窗口
 */
function openImportWindow(){
    $("#importForm")[0].reset();
    $("#importForm").validate(formValidator).resetForm();
    $('#importWindow').jqmShow();
}


/**
 * 导入文件
 */
function importData(){
    var validator=$('#importForm').validate(formValidator);
    if(validator.form()) {
        start();
        var m = document.importForm;
        m.action = '/gatherattributeset/importData';
        m.submit();
    }
}

/**
 * 启动进度条
 */
function start(){
    $('#progressbar_tr').css('display','');
    var value = $('#progressbar').progressbar('getValue');
    if (value < 100){
        value += Math.floor(Math.random() * 10);
        $('#progressbar').progressbar('setValue', value);
        setTimeout(arguments.callee, 2000);
    }
}

function toAddGatherAttrBySku(){
    window.location = '/gatherattributeset/toAddGatherAttrBySku' ;
}