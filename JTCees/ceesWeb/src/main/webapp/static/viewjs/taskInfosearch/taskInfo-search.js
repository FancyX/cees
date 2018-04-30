//采集任务管理初始化页面:查看页面
$(function(){
    //表格初始化
    loadGrid();
    queryTaskInfoSearchList();
});
//列表初始化
function loadGrid(){
    $('#taskTableInfoSearch').datagrid({
        width:990,
        height:410,
        nowrap: true,
        striped: true,
        collapsible:true,
        method:'post',
        sortName: 'returnTime',
        sortOrder: 'desc',
        remoteSort: true,
        idField:'id',

        loadMsg:'数据加载中......',
        columns:[[
            {field:'goodsCode',title:'商品编码',width:120},
            {field:'goodsName',title:'商品名称',width:120},
            {field:'attributeName',title:'属性名称',width:120},
            {field:'oldValue',title:'原值',width:100},
            {field:'newValue',title:'采集值',width:100},
            {field:'approveFlag',title:'状态',width:100,
                formatter:function(value,rowData,rowIndex){
                    //状态 0 通过 1 驳回 2 未审核
                    if(1==value){
                        return "通过";
                    }else if(2==value){
                        return "驳回";
                    }else{
                        return "未审核";
                    }
                }
            },
            {field:'describe',title:"说明",width:120,editor:'text'},
            {field:'caozuo',title:'操作',width:140,
                formatter:function(value,rowData,rowIndex){
                    //function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始），当状态是“未审核”时才会有“通过”、“驳回”
                    if (rowData.approveFlag!=1 &&rowData.approveFlag!=2 && rowData.newValue != null) {
                        $("#canAllOperation").val("true");
                        return "<a href='javascript:toPass(\"" + rowData.id+"\",\""+rowData.describe+ "\",\""+rowData.goodsName+ "\",\""+rowData.oldValue+ "\",\""+rowData.newValue+ "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-text icon-edit' en><span style='padding-left: 20px;' font-color='#5FABEE'>" + "通过" + "</span></span></a><a href='javascript:toReject(\"" + rowData.id+"\",\""+rowData.describe+ "\")' style='' class='l-btn l-btn-plain'><span class='l-btn-text icon-edit'><span style='padding-left: 20px;'>" + "驳回" + "</span></span></a>"
                    }
                    return "";
                }
            }
        ]],
        pagination:true,
        rownumbers:true,
		onClickCell: function (rowIndex, field, value) {
            beginEditing(rowIndex, field, value)
        }
    });
}

var editIndex = undefined;
//列表行编辑函数
var beginEditing = function (rowIndex, field, value) {
    if (field != "describe")
        {return;}

    if (rowIndex != editIndex) {
        if (endEditing()) {
            $('#taskTableInfoSearch').datagrid('beginEdit', rowIndex);
            editIndex = rowIndex;

            var ed = $('#taskTableInfoSearch').datagrid('getEditor', { index: rowIndex, field: 'describe' });
            $(ed.target).focus().bind('blur', function () {
                endEditing();
            });
        } else {
            $('#taskTableInfoSearch').datagrid('selectRow', editIndex);
        }
    }
}
//列表行编辑函数
var endEditing = function () {
    if (editIndex == undefined) { return true }
    if ($('#taskTableInfoSearch').datagrid('validateRow', editIndex)) {
        var ed = $('#taskTableInfoSearch').datagrid('getEditor', { index: editIndex, field: 'describe' });
//        var number = $(ed.target).text('getValue');
        var number = ed.target.val();
        $('#taskTableInfoSearch').datagrid('getRows')[editIndex]['content'] = number;
        $('#taskTableInfoSearch').datagrid('endEdit', editIndex);
        $('#taskTableInfoSearch').datagrid('selectRow', editIndex);
        editIndex = undefined;
        return true;
    } else {
        return false;
    }
}

//查询商品属性
function queryTaskInfoSearchList(){
    $('#taskTableInfoSearch').datagrid('options').url='/taskInfoSearch/findTaskInfoSearch.json';
    $("#canAllOperation").val("false");
    //为loadGrid()添加参数
    var queryParams = $('#taskTableInfoSearch').datagrid('options').queryParams;
    queryParams.tgid = $('#id').val();
    //重新加载datagrid的数据
    $("#taskTableInfoSearch").datagrid('load');
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
//采集任务中对查看功能中的"未审核"进行操作：通过操作
function toPass(id,describe,goodsName,oldValue,newValue){
    if(''==id||describe=="undefined"||id=="undefined"||''==describe || 'null' == describe || null == describe){
		Commons.showError("请填写说明！");
	}else{
		jQuery.ajax({
	        type : 'POST',
	        url : "/taskInfoSearch/updateGatherFlag.json",
	        data: {
	            "id": id ,
	            "note":describe,
	            "isAll":1,
	            "approveFlag":1,
	            "goodsName":goodsName,
	            "oldValue":oldValue,
	            "newValue":newValue
	        },
	        success : function(data){
                var approvalResult =  data.approvalResult;
                if(approvalResult == undefined || approvalResult == null)
                {
                    Commons.showError("审批异常");
                }
                else{
                    Commons.showSuccess(approvalResult);
                }
	            $("#taskTableInfoSearch").datagrid('reload');
	        },
	        error:function(){
	            Commons.showError("系统异常！");
	        }

	    });
	}

}
//采集任务中对查看功能中的"未审核"进行操作：驳回操作
function toReject(id,describe){
	if(''==id||describe=="undefined"||id=="undefined"||''==describe || 'null' == describe || null == describe){
		Commons.showError("请填写说明！");
	}else{
		jQuery.ajax({
	        type : 'POST',
	        url : "/taskInfoSearch/updateGatherFlag.json",
	        data: {
	            "id": id ,
	            "note":describe,
	            "isAll":1,
	            "approveFlag":2
	        },
	        success : function(data){
                var approvalResult =  data.approvalResult;
                if(approvalResult == undefined || approvalResult == null)
                {
                    Commons.showError("审批异常");
                }
                else{
                    Commons.showSuccess(approvalResult);
                }
                $("#taskTableInfoSearch").datagrid('reload');
	        },
	        error:function(){
	            Commons.showError("系统异常！");
	        }

	    });
	}
}
//采集任务中对查看功能中的"未审核"进行操作：全部通过操作

function allPass(){
	var describe = $('#explain').val();
	var id = $('#id').val();
    var canPassAll = $("#canAllOperation").val();
    if(canPassAll == "false")
    {
        Commons.showError("该任务没有需要通过的属性");
        return;
    }
	if(describe=="undefined"||''==describe||id=="undefined"||''==id){
		Commons.showError("请填写说明！");
	}else{
        jqm.loading({
            jqmid:'jqmLoading',
            size:48,
            content:'正在审批中.  .  .'

        });
		jQuery.ajax({
	        type : 'POST',
	        url : "/taskInfoSearch/updateGatherFlag.json",
	        data: {
	        	"id":id,
	            "note":describe,
	            "isAll":0,
	            "approveFlag":1
	        },
	        success : function(data){
                $('#jqmLoading').jqmHide();
                var approvalResult =  data.approvalResult;
                if(approvalResult == undefined || approvalResult == null)
                {
                    Commons.showError("审批异常");
                }
                else{
                    Commons.showSuccess(approvalResult);
                }
                $('#explain').val("");
                $("#canAllOperation").val("false");
                $("#taskTableInfoSearch").datagrid('reload');
	        },
	        error:function(){
                $('#jqmLoading').jqmHide();
	            Commons.showError("系统异常！");
	        }

	    });
	}

}
function allReject(){
	var describe = $('#explain').val();
	var id = $('#id').val();
    var canRejectAll = $("#canAllOperation").val();
    if(canRejectAll == "false")
    {
        Commons.showError("该任务没有需要驳回的属性");
        return;
    }
	if(describe=="undefined"||''==describe||id=="undefined"||''==id){
		Commons.showError("请填写说明！");
	}else{
        jqm.loading({
            jqmid:'jqmLoading',
            size:48,
            content:'正在审批中.  .  .'
        });
		jQuery.ajax({
			type : 'POST',
			url : "/taskInfoSearch/updateGatherFlag.json",
			data: {
				"id":id,
				"note":describe,
				"isAll":0,
				"approveFlag":2
			},
			success : function(data){
                $('#jqmLoading').jqmHide();
                var approvalResult =  data.approvalResult;
                if(approvalResult == undefined || approvalResult == null)
                {
                    Commons.showError("审批异常");
                }
                else{
                    Commons.showSuccess(approvalResult);
                }
                $('#explain').val("");
                $("#canAllOperation").val("false");
                $("#taskTableInfoSearch").datagrid('reload');
			},
			error:function(){
                $('#jqmLoading').jqmHide();
				Commons.showError("系统异常！");
			}
			
		});
	}
	
}
//
//function showApprovalStatus()
//{
//    var showMsgPanel=$("body");
//   var panel =  $("<div class=\"datagrid-mask\" style=\"display:block\"></div>").appendTo(showMsgPanel).attr("width","100%").attr("height","100%");
//    var msg=$("<div class=\"datagrid-mask-msg\" style=\"display:block;left:50%\"></div>").html("系统正在审批中").appendTo(showMsgPanel);
//    msg.css("marginLeft",-msg.outerWidth()/2);
//    msg.css("marginTop",-msg.outerHeight()/2);
//}
//
//function showApprovalStatePanel()
//{
//    var approvalStatePanel =document.getElementById("approvalStatePanel") ;
//    approvalStatePanel.style.display="" ;
//    var winWidth=document.body.clientWidth ;
//    var winHeight=document.body.clientHeight ;
//
//    approvalStatePanel.style.width=winWidth ;
//    approvalStatePanel.style.height=winHeight ;
//    var msg=$("<div class=\"datagrid-mask-msg\" style=\"display:block;left:50%;top: 50%\" ></div>").html("系统正在审批中. . .  ").appendTo(approvalStatePanel);
//   msg.css("font-size","14px");
//   msg.css("marginLeft",-msg.outerWidth()/2);
//
//}