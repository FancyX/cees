$(function(){
    //表格初始化
    loadGrid();
});
//列表初始化
function loadGrid(){
    $('#ordertable').datagrid({
        width:990,
        height:310,
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
            {field:'goodsCode',title:'商品编码',width:70},
            {field:'goodsName',title:'商品名称',width:70},
            {field:'attributeName',title:'属性名称',width:70},
            {field:'changeFlag',title:'变更方式',width:60,
                formatter:function(value,rowData,rowIndex){
                    if(0==value){
                        return "变更";
                    }else if(1==value){
                        return "新增";
                    }
                }
            },
            {field:'oldValue',title:'属性原值',width:60},
            {field:'newValue',title:'属性新值',width:60},
            {field:'department',title:'更新部门',width:70},
            {field:'approveFlag',title:'审批状态',width:65,
                formatter:function(value,rowData,rowIndex){
                    if(0==value){
                        return "未审核";
                    }else if(1==value){
                        return "审核通过"
                    }else if(2==value){
                        return "审核不通过";
                    }
                }
            },
//##审核人、审核日期为后加，暂设虚拟值，等待后台确认后，修改field
            {field:'approvePin',title:'审核人',width:60},
            {field:'approveTime',title:'审核日期',width:140,
                formatter:function(value,rowData,rowIndex){
                    if(rowData.approveTime != null){
                        //alert(rowData.approveTime);
                       //return  timeStamp2String(rowData.approveTime);
                        return new Date(rowData.approveTime).format("yyyy/MM/dd hh:mm:ss");
                    }
                }
            },
            {field:'updateName',title:'更新人',width:55},
            {field:'updateTime',title:'更新日期',width:140,
                formatter:function(value,rowData,rowIndex){
                    if(rowData.updateTime != null){
                        return new Date(rowData.updateTime).format("yyyy/MM/dd hh:mm:ss");
                    }
                }
            }
        ]],
        pagination:true,
        rownumbers:true
    });

};


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
//查询变更日志属性
function queryChangeLogInfoList(){
    var validator = $('#form0').validate(formValidator);
    if(validator.form()){

        $('#ordertable').datagrid('options').url='/changeloginfo/querychangeloginfo.json';
        //为loadGrid()添加参数
        var queryParams = $('#ordertable').datagrid('options').queryParams;
        queryParams.goodsCode = $('#goodsCode').val();
        queryParams.approveFlag = $('#approveFlag').val();
        queryParams.updateName = $('#updateName').val();

        if($('#updateTimeFrom').val() !=null && $('#updateTimeFrom').val()!=""){
            queryParams.updateTimeFrom = $('#updateTimeFrom').val() + " 00:00:00";

        } else {
            queryParams.updateTimeFrom = "";
        }
        if($('#updateTimeTo').val() != null && $('#updateTimeTo').val()!=""){
            queryParams.updateTimeTo = $('#updateTimeTo').val() + " 23:59:59";

        } else {
            queryParams.updateTimeTo = "";
        }
        queryParams.department = $('#department').val();
        $("#ordertable").datagrid('load');
    }
}

/**
 * 导出变更日志
 */
function exportChangeLog(){
    jqm.confirm({
        w:400,
        title:'提示',
        type:'attention',
        content:'<h4>确定导出？</h4>',
        self:self,
        onConfirm:function(){
            var m = document.forms[0];
            var action = m.action;
            m.action = "/changeloginfo/exportExcel";
            m.submit();
            m.action = action;
        }
    });
}