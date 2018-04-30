
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
 * 获取主商品编码
 */
function getGoodsName(flag){
	
	var goodsCode;
	if('staple' == flag){
		goodsCode = $("#stapleGoodsCode").val();
	}else{
		goodsCode = $("#tiedGoodsCode").val();
	}
	
    jQuery.ajax({
        type : "POST",
		async: false,
        data :
        {
           "goodsCode":goodsCode
        },
        url : '/goodsRelations/queryGoodsName.json',
        success: function (data){
        	if("" == data.goodsName){
        		Commons.showError('无此商品,请重新输入！',300,function(){
					if("staple" == flag){
					$("#stapleGoodsCode").select();
					}else{
						$("#tiedGoodsCode").select();
					}
				});

        		return false;
        	}
        	if("staple" == flag){
				$("#stapleGoodsCode").val(goodsCode);
				$("#labStapleGoodsName").html(data.goodsName);
        		$("#stapleGoodsName").val(data.goodsName);
        		return true;
        	}else{	
				$("#tiedGoodsCode").val(goodsCode);
				$("#labTiedGoodsName").html(data.goodsName);
        		$("#tiedGoodsName").val(data.goodsName);
        		return true;
        	}
        }
    });
}

/**
 *  提交商品主附关系信息
 */
 function saveGoodsInfo(){
     
    //校验表单
    var validator1 = $('#form1').validate(formValidator);
	var form1 = validator1.form();
	    if(!form1){
        return false;
    }
	    
	//判断主商品是否存在
    if(false == getGoodsName('staple')){
	    return false;
    }
    //判断附商品是否存在
    if(false == getGoodsName('tied')){
	    return false;
    }
    //判断是否含有中文
    var tiedGoodsNum = $("#tiedGoodsNum").val();
    if(true == isChina(tiedGoodsNum)){
		Commons.showError('附商品数量输入值含有中文，请重新输入！',300,function(){
			$("#tiedGoodsNum").select();
		});
		return false;
    }
    //检查是否为正整数
    if(true != checkRate(tiedGoodsNum)){
		Commons.showError('附商品数量输入值必须为正整数，请重新输入！',300,function(){
			$("#tiedGoodsNum").select();
		});
		return false;
    }

	//主商品编码
	var stapleGoodsCode = $("#stapleGoodsCode").val();
	//附商品编码
    var tiedGoodsCode = $("#tiedGoodsCode").val();
        
	//判断主商品编码与附商品编码一致
    if(stapleGoodsCode == tiedGoodsCode){
	  jqm.confirm({
            w:400,
            title:'警告',
            type:'attention',
            content:'<h4>主商品编码与附商品编码一致！ </h4>',
            self:self,
            onConfirm:function(){
            	saveForm();
            }
      });
	}else{
		saveForm();

	}	 
 }
 
//提交商品主附关系信息 
function saveForm(){
	 
	jQuery.ajax({
		type : "POST",
		async: false,
		data :
		{
		   "stapleGoodsCode":$("#stapleGoodsCode").val(),
		   "stapleGoodsName":$("#stapleGoodsName").val(),
		   "tiedGoodsCode":$("#tiedGoodsCode").val(),
		   "tiedGoodsName":$("#tiedGoodsName").val(),
		   "tiedGoodsNum":$("#tiedGoodsNum").val(),
		},
		url : '/goodsRelations/insertGoodsRelations.json',
		success: function (data){
			if(data.flag == 0){
				Commons.showError('商品主附关系已存在');
			}else if(data.flag == 1){
				Commons.showSuccess('商品主附新增成功！',300,function(){
					$("#stapleGoodsCode").val("");
					$("#stapleGoodsName").val("");
					$("#tiedGoodsCode").val("");
					$("#tiedGoodsName").val("");
					$("#labStapleGoodsName").html("");
					$("#labTiedGoodsName").html("");
					$("#tiedGoodsNum").val(1);
				});
			}else{
				Commons.showError('商品主附新增失败！');
			}
		}
	});
 }
//检查是否为正整数
function checkRate(input)  
{  
     var re = /^[1-9]+[0-9]*]*$/; 
     if (!re.test(input)){  
        return false;
     }else{
		return true;
	 }  
}  
