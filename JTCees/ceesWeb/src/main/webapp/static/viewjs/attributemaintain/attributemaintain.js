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
	loadGrid();
});


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
