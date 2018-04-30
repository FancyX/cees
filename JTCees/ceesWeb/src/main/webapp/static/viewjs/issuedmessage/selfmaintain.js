
$(function(){
        //表格初始化
        loadGrid();
    });


//列表初始化
function loadGrid(){
    $('#selfmaintaintable').datagrid({
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
            {field:'sku',title:'商品SKU',width:105},     
            {field:'downFlag',title:'下发标识',width:105,
            	formatter:function(value,rowData,rowIndex){
                    if(1 == value){
                        return "成功";
                    }else{
                        return "失败";
                    }
            	}
            }, 
            {field:'createTime',title:'创建时间',width:140,
                formatter:function(value,rowData,rowIndex){
                	if(value != null){
                          return new Date(value).format("yyyy/MM/dd hh:mm:ss");
                    }
                }
            },
            {field:'updateTime',title:'更新时间',width:140,
                formatter:function(value,rowData,rowIndex){
                	if(value != null){
                       return new Date(value).format("yyyy/MM/dd hh:mm:ss");
                	}
                }
            }
        ]],
        pagination:true,
        rownumbers:true
    });
}


//查询报文
function queryMessage(){
	var validator = $('#form0').validate(formValidator);
	 if(validator.form()){
		 $('#selfmaintaintable').datagrid('options').url='/issuedmessage/queryMessage.json';
		 //为loadGrid()添加参数
		 var queryParams = $('#selfmaintaintable').datagrid('options').queryParams;
		 
		 queryParams.sku = $('#sku').val();
		 queryParams.downType = $('#downType').val();
		 var downFlag = $("input[name='downFlag']:checked").val();
		 queryParams.downFlag = downFlag;
		 
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
	     //重新加载datagrid的数据
	     $("#selfmaintaintable").datagrid('load');
	 }
}

//下发报文
function downMessage(){
	var updateTimeFrom = $('#updateTimeFrom').val();
	var updateTimeTo = $('#updateTimeTo').val();
	var downType = $('#downType').val();
	var downFlag = $("input[name='downFlag']:checked").val();
	var sku = '';
	
	var rowData = $('#selfmaintaintable').datagrid('getRows');
	if(rowData.length <= 0){
		Commons.showWarn("请选择数据!");
		return false;
	}
	
	for(var i=0;i < rowData.length;i++){
		sku +=  rowData[i].sku + ",";
	}
	sku = sku.substring(0, sku.lastIndexOf(','));
	
	jQuery.ajax({
		type : 'POST',
		async : false,
		data : {
			sku : sku,
			updateTimeFrom : updateTimeFrom,
			updateTimeTo : updateTimeTo,
			downType : downType,
			downFlag : downFlag
		},
		url : '/issuedmessage/downMessage.json',
		success : function(data){
			if(data == "true"){
				Commons.showSuccess("下发成功");
				$("#sku").val("");
			}
			else if(data == "false"){
				 Commons.showWarn("下发失败");
				$("#skuValue").val("");
			}
			else if (data.stackTrace){
				Commons.showWarn("下发异常");
			} 
		}
	});
}
