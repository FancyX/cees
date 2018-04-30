var store;
var rndJqmId = 'addAttrConfigLoading';
var selectIndex = null;

$(function() {
	// 表格初始化
	$('#uploadshow').jqm({
		closeClass : 'jqmClose',
		overlayClass : 'whiteOverlay',
		movable : true
	});

    // 查询一级分类
    jQuery.ajax({
        type : 'POST',
        url : '/oldoroducttask/queryAttributebycategory.json',
        data : {
            fatherId : 0
        },
        success : function(data) {
            $("#categoryOne").prepend("<option value=''>请选择</option>");
            $("#categoryTwo").prepend("<option value=''>请选择</option>");
            $("#categoryThree").prepend("<option value=''>请选择</option>");
            if ('' != data && null != data) {
                for ( var i = 0; i < data.length; i++) {
                    $("#categoryOne").append(
                        "<option value='" + data[i].productSortId + "'>"
                            + data[i].name + "</option>");
                }
            }
        }
    });

    loadGrid();
});

// 列表初始化
function loadGrid() {
	$('#ordertable')
			.datagrid(
					{
						width : 990,
						height : 289,
						singleSelect: true,
						nowrap : false,
						striped : true,
						collapsible : true,
						url : '/collectattributeconfigsku/queryUnvalidateGoods.json',
						method : 'post',
						remoteSort : true,
						idField : 'id',
						loadMsg : '数据加载中......',
						onBeforeLoad: function() {
							$("input[type=checkbox]").attr("checked",false);
							$('#ordertable').datagrid("unselectAll"); 
						},
						onLoadSuccess:function() {
							
							$("#ordertable3").fadeOut('slow');
							$("input[type=checkbox]").attr("checked",false);
							$('#ordertable').datagrid("unselectAll"); 
							$("td[field]").find("input[type=checkbox]").bind('click',function() {
								if($("td[field]").find("input[type=checkbox]:checked").length == $('#ordertable').datagrid('options').pageSize) {
									$($("input[type=checkbox]")[0]).attr("checked",true);
								} else {
									$($("input[type=checkbox]")[0]).attr("checked",false);	
								}
							})
							if(selectIndex) $('#ordertable').datagrid("selectRow",selectIndex);
							selectIndex = null;
						},
						onSelect : function(value, item) {
							//$("#ordertable3").css("display","none");							
							$("#ordertable3").fadeOut('slow');
							selectIndex = value;
							store = {};
							jqm.loading({
								jqmId: rndJqmId,
								size: 48,
								content: '请等待'
							});
							
							jQuery.ajax({
										type : 'POST',
										data : {
											goodsCode : item.goodsCode
										},
										url : '/collectattributeconfigsku/queryOtherPropertyValues.json',
										success : function(data) {
											$(".whiteOverlay").hide();
											$("#" + rndJqmId).jqmHide();
											var currentTr = null, table = $("#table"), data = data.data, wedget;
											var lasTr = $(table);
											for ( var i = 0; i < data.length; i++) {
												var temp = data[i];
												temp.attributeTempValue = temp.attributeValue;
												store[temp.attributeCode] = temp;
												if (i % 3 == 0) {
													if (currentTr)
														table.append(currentTr);
													else
														table.html("");
													currentTr = $("<tr/>");
												}
												currentTr.append($('<td width="60" class="textL"><label class="necessaryL">'+ temp.attributeName+ '：</label></td>'));
												if (temp.showType) {
													wedget = $('<td width="120" class="textL"><select class="textField18" name="'+ temp.attributeCode+ '"></select> </td>');
													var select = wedget.find("select");
													var array = temp.attributeContents;
													for ( var j = 0; j < array.length; j++) {
														var item = array[j];
														var option = $('<option value="'+ item.content+ '">'+ item.name+ '</option>');
														select.append(option);
														select.val(temp.attributeValue);
													}
												} else {
													wedget = $('<td width="120" class="textL"><input type="text" class="textField18" name="'+ temp.attributeCode+ '"> </td>');
													wedget.find("input").val($.trim(temp.attributeValue));
												}
												currentTr.append(wedget);
												table.append(currentTr);
											}
											if(data.length && data.length < 3) {
												for(var i = 0 ; i < 3 - data.length ; i++) {
													currentTr.append($('<td width="60" class="textL"><label class="necessaryL"></label></td>'));
													currentTr.append($('<td width="120" class="textL"></td>'));
												}
											}
											if(data.length) $("#ordertable3").fadeIn('slow');
										}
									});
						},
						columns : [ [ 
						/*              {
							checkbox : true,
							width : 110
						},*/
                        {
                            field : 'onegroupName',
                            title : '一级分类',
                            width : 110
                        },
                        {
                            field : 'secondgroupName',
                            title : '二级分类',
                            width : 110
                        },
                        {
                            field : 'thirdgroupName',
                            title : '三级分类',
                            width : 110
                        },
						{
							field : 'id',
							title : '商品编码',
							width : 110,
							formatter : function(value, item) {
								return item.goodsCode;
							}
						}, {
							field : 'goodsName',
							title : '商品名称',
							width : 300
						}, {
							field : 'a',
							title : '长',
							width : 110,
							formatter : function(item,value) {
								item = value.propertyValues;
								if(!item['Length']) return '';
								return item['Length'].attributeValue
							}
						}, {
							field : 'b',
							title : '宽',
							width : 110,
							formatter : function(item,value) {
								item = value.propertyValues;
								if(!item['Width']) return '';
								return item['Width'].attributeValue
							}
						}, {
							field : 'c',
							title : '高',
							width : 110,
							formatter : function(item,value) {
								item = value.propertyValues;
								if(!item['Height']) return '';
								return item['Height'].attributeValue
							}
						}, {
							field : 'd',
							title : '重量',
							width : 110,
							formatter : function(item,value) {
								item = value.propertyValues;
								if(!item['Weigth']) return '';
								return item['Weigth'].attributeValue
							}
						},{field:'变动记录',title:'操作',width:85,
                            formatter:function(value,rowData,rowIndex){
                                //function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
                               return "<a onclick=deleteGoodsInfo(\""+rowData.goodsCode+"\",event) href='###' style='' class='l-btn l-btn-plain'><span class='l-btn-left'><span class='l-btn-text icon-remove' style='padding-left: 20px;'>"+"删除"+"</span></span></a>";
                            }
                        }/*, {
							field : 'createTime',
							title : '创建日期',
							width : 150,
							formatter:function(value) {
								return Date.format(new Date(value),'yyyy-MM-dd');
							}
						}*/ ] ],
						pagination : true,
						// rownumbers : true
						rownumbers : false
					});
}

function serializeData(node,notTrim) {
	var node = $(node)[0];
	node = node.reset? $(node): $('<form/>').html($(node).html());
	var data = new Object, a = node.serializeArray();
	for(var i = 0 ;i < a.length ; i++) {
		var property = a[i];
		var name = property.name, value = property.value, temp = data[name];
		if(notTrim !== true) value = $.trim(value);
		temp == null? data[name] = value: temp.push? temp.push(value):data[name] = [temp,value];
	}
	return data;
}


function queryAttributeList() {
	var sku = $.trim($("#sku").val());
	var queryParams = $('#ordertable').datagrid('options').queryParams;
	queryParams.goodsCode = sku;
    queryParams.onegroupNo = $("#categoryOne  option:selected").val();
    queryParams.secondgroupNo = $("#categoryTwo  option:selected").val();
    queryParams.thirdgroupNo = $("#categoryThree  option:selected").val();
//	$('#ordertable').datagrid("reload");
    $('#ordertable').datagrid("load");
}

function valildate() {

	var a = $('#ordertable').datagrid('getSelections');
	if(!a.length) {
		Commons.showWarn("请勾选待验证的商品!");
		return;
	}
	jqm.loading({
		jqmId: rndJqmId,
		size: 48,
		content: '请等待'
	}); 
	var goodsCodes = []; 
	for(var i = 0 ; i < a.length ; i++) {
	    var item = a[i];
	    goodsCodes.push(item.goodsCode);
	}
	jQuery.ajax({
		type : 'POST',
		data : {
			"goodsCode" : goodsCodes.join(',')
		},
		url : '/goodsattributemanager/batvalidate.json',
		success : function(data) {
			if (data == true) {
				Commons.showSuccess("验证成功!");
				$('#ordertable').datagrid("reload");
			} else {
				Commons.showWarn("验证失败，请重新验证!");
			}
			$("#" + rndJqmId).jqmHide();
		}
	})

}

//删除商品属性
function deleteGoodsInfo(goodsCode,e){
	
	e.stopPropagation ? e.stopPropagation() : e.cancelBubble = true;
    if(goodsCode == ''||goodsCode == null){
        Commons.showWarn("请选择一条要删除");
    }else{
        jqm.confirm({
            w:400,
            title:'警告',
            type:'attention',
//                content:'<h4>是否确认要删除该商品信息？</h4>',
            content:'<h4>是否将此信息删除？</h4>',
            self:self,
            onConfirm:function(){
            	jqm.loading({
            		jqmId: rndJqmId,
            		size: 48,
            		content: '请等待'
            	}); 
                jQuery.ajax({
                    type : 'POST',
                    url : '/collectattributeconfigsku/deleteUnvalidateGoods?goodsCode='+goodsCode,

                    success : function(data){
                    	$("#" + rndJqmId).jqmHide();
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

function save()	{
	var table = $("#table");
	var data = serializeData(table);
	var attributeList = [];
	for(var k in data) {
		store[k].attributeValue = table.find('input[name='+k+']').val() || table.find('select[name='+k+']').val();
		store[k].attributeContents = null;
		attributeList.push(store[k]);
	}
	jqm.loading({
		jqmId: rndJqmId,
		size: 48,
		content: '请等待'
	}); 
	jQuery.ajax({
        type :'POST',
        data:
        {
            attributeList : JSON.stringify(attributeList)
        } ,
        url: '/goodsattributemanager/updateAttributeValidate.json',
        success:function(data){
        	debugger;
            if(data){
                Commons.showSuccess("保存成功");
                $('#ordertable').datagrid("reload");
            } else if(data == 0){
                Commons.showWarn("下发报文失败");
            }else{
                Commons.showError("保存失败");
            }
            $("#" + rndJqmId).jqmHide();
        }

    })
}

function downTempate() {
	var iframe = $("#iframe")
	iframe.attr('src','/goodsattributemanager/exportValidationExcelTemplate');
}

function importShow() {
	var file = $("#importExcel");
	var cloneFile = file.clone();
	cloneFile.val('');
	file.after(cloneFile).remove();
	$("#uploadshow").jqmShow();
}

function importTemplate() {
	
	if (null == $("#importExcel").val() || '' == $("#importExcel").val()) {
		return false;
	} else if ($("#importExcel").val().substring(
			$("#importExcel").val().lastIndexOf(".") + 1) == "xlsx"
			|| $("#importExcel").val().substring(
					$("#importExcel").val().lastIndexOf(".") + 1) == "xls") {

		//$("#importForm").attr("target","iframe").submit();
		
		var iframe = $("#iframe")
		iframe.bind('load',function() {
			var io = document.getElementById('iframe');
			$(io).unbind('load');
			if(io.contentWindow) {
				var v1 = io.contentWindow.document.body?io.contentWindow.document.body.innerHTML:null;
		    	var v2 = io.contentWindow.document.XMLDocument?io.contentWindow.document.XMLDocument:io.contentWindow.document;
			} else if(io.contentDocument) {
				var v1 = io.contentDocument.document.body?io.contentDocument.document.body.innerHTML:null;
		    	var v2 = io.contentDocument.document.XMLDocument?io.contentDocument.document.XMLDocument:io.contentDocument.document;
			}
			var value = v1 || v2;
			
			if(value && value.indexOf('共导入') != -1) {
				Commons.showSuccess(v1 || v2);
				$("#uploadshow").jqmHide();
				queryAttributeList(); 
			} else {
				$("#uploadshow").jqmHide();
				Commons.showError('导入出现异常');
			}
			$("#addAttrConfigLoading").hide();
			$(".whiteOverlay").hide();
		});
		jqm.loading({
			jqmId: rndJqmId,
			size: 48,
			content: '请等待'
		});
		document.getElementById("importForm").submit();
		
	} else {
		Commons.showError('请选择有效的Excel文件');
	}
	
}


// 根据三级品类查询商品信息（二级）
function queryAttributebycategoryTwo(productSortId) {
    $("#categoryTwo option[value!='']").remove();
    $("#categoryThree option[value!='']").remove();
    if(productSortId == '' )
    {
        return;
    }
    jQuery.ajax({
        type : 'POST',
        url : '/oldoroducttask/queryAttributebycategory.json',
        data : {
            "fatherId" : productSortId
        },
        success : function(data) {
            if ('' != data && null != data) {
                for ( var i = 0; i < data.length; i++) {
                    $("#categoryTwo").append(
                        "<option value='" + data[i].productSortId + "'>"
                            + data[i].name + "</option>");
                }
            }
        }
    });
}
// 根据三级品类查询商品信息（三级）
function queryAttributebycategoryThree(productSortId) {
    $("#categoryThree option[value!='']").remove();
    if(productSortId == "")
    {
        return;
    }

    jQuery.ajax({
        type : 'POST',
        url : '/oldoroducttask/queryAttributebycategory.json',
        data : {
            "fatherId" : productSortId
        },
        success : function(data) {
            if ('' != data && null != data) {
                for ( var i = 0; i < data.length; i++) {
                    $("#categoryThree").append(
                        "<option value='" + data[i].productSortId + "'>"
                            + data[i].name + "</option>");
                }
            }
        }
    });
}