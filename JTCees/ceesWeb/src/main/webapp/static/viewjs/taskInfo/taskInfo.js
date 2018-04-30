//采集任务管理初始化页面
$(function(){
    //表格初始化
    loadGrid();
    // 查询配送中心信息
    jQuery.ajax({
        type : 'POST',
        url : '/oldoroducttask/queryDeliverCenters.json',

        success : function(data) {
            $("#delivercentercode").prepend("<option value=''>请选择</option>");
            $("#storeid").prepend("<option value=''>请选择</option>");
            if ('' != data && null != data) {
                for ( var i = 0; i < data.length; i++) {
                    $("#delivercentercode").append(
                        "<option value='" + data[i].delivercentercode
                            + "'>" + data[i].delivercentername
                            + "</option>");
                }
            }
        }
    });
});
//查询库房信息
function queryStores(delivercentercode) {
    if ('' == delivercentercode) {
        $("#storeid")[0].options.length = 0;
        $("#storeid").prepend("<option value=''>请选择</option>");
        return;
    }
    jQuery.ajax({
        type : 'POST',
        url : '/oldoroducttask/queryStores.json',
        data : {
            "delivercentercode" : delivercentercode
        },
        success : function(data) {
            if ('' != data && null != data) {
                $("#storeid")[0].options.length = 0;
                $("#storeid").prepend("<option value=''>请选择</option>");
                for ( var i = 0; i < data.length; i++) {
                    $("#storeid").append(
                        "<option value='" + data[i].storeid + "'>"
                            + data[i].storename + "</option>");
                }
            }
        }
    });
}
//列表初始化
function loadGrid(){
    $('#taskTable').datagrid({
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
            {field:'wmsTaskId',title:'任务编号',width:80},
            {field:'taskType',title:'任务类型',width:80,
                formatter:function(value,rowData,rowIndex){
                    //任务类型 0 新品采集 1 老品采集
                    if(0==value){
                        return "新品采集";
                    }else if(1==value){
                        return "老品采集";
                    }
                }
            },
            {field:'goodsNum',title:'商品数量',width:80},
            {field:'createTime',title:'创建时间',width:120,
                //时间格式转化
                formatter:function(value,rowData,rowIndex){
                    return timeStamp2String(value);
                }
            },
            {field:'createPin',title:'创建人',width:80},
            {field:'updateTime',title:'采集时间',width:120,
                //时间格式转化
                formatter:function(value,rowData,rowIndex){
                    return timeStamp2String(value);
                }
            },
            {field:'updatePin',title:'采集人',width:80},
            {field:'warehouseName',title:'采集库房',width:80},
            {field:'gatherStatus',title:'状态',width:80,
                formatter:function(value,rowData,rowIndex){
                    //采集状态 0 未采集 1 采集中 2 已采集
                    if(0==value){
                        return "未采集";
                    }else if(1==value){
                        return "采集中";
                    }else if(2==value){
                        return "已采集";
                    }
                }
            },
            {field:'caozuo',title:'操作',width:120,
                formatter:function(value,rowData,rowIndex){
                    //function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                    return "<a href='javascript:toCheck(\""+rowData.wmsTaskId+"\")' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-search' style='padding-left: 20px;'>"+"查看"+"</span></span></a>"
                }
            }
        ]],
        pagination:true,
        rownumbers:true
    });
}
//查询方法，id是task_goods_info表中的id
function toCheck(id){
    window.open('/taskInfo/initNewPage?id='+id);
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
function queryTaskInfoList(){
    //校验表单
    var validator = $('#form0').validate(formValidator);
    if(!validator.form()){
        return false;
    }
    $('#taskTable').datagrid('options').url='/taskInfo/findTaskInfo.json';
    //为loadGrid()添加参数
    var queryParams = $('#taskTable').datagrid('options').queryParams;
    queryParams.wmsTaskId =$('#id').val();
    if($('#delivercentercode').find('option:selected').val()!=''&&$('#storeid').find('option:selected').val()==''){
        Commons.showError("选择采集机构后需要选择采集库房！");
        return false;
    }
    queryParams.delivercentercode = $('#delivercentercode').find('option:selected').val();
    queryParams.warehouseId = $('#storeid').find('option:selected').val();
    queryParams.updateTimeStart = $('#updateTimeStart').val();
    queryParams.updateTimeEnd = $('#updateTimeEnd').val();
    queryParams.updatePin = $('#updatePin').val();
    queryParams.goodsCode = $('#goodsCode').val();

    //重新加载datagrid的数据
    $("#taskTable").datagrid('load');
}
//条件查询中库房名称的改变
function initWareHouseId() {

    $.post("/wareInfo/findByStoreId", function (data) {
        data.forEach(function (org) {
            $('#warehouseName').get(0).options.add(new Option(org.warehouseName, org.id));
        });
    });

    if ($(this).val() != '') {
        initWareHouseId($(this).val());
    }
}
//删除任务管理，“老品采集”和“未采集”可以删除
function delTaskInfo(id){
    if(id == ''||id == null){
        Commons.showWarn("请选择一条要删除的信息");
    }else{
        jqm.confirm({
            w:400,
            title:'警告',
            type:'attention',
            content:'<h4>是否确认要删除该采集任务信息？</h4>',
            self:self,
            onConfirm:function(){
                jQuery.ajax({
                    type : 'POST',
                    url : '/taskInfo/deleteTaskInfo?id='+id,
                    success : function(data){
                        if(data){
                            Commons.showSuccess("操作成功！");
                            $("#taskTable").datagrid('reload');
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
