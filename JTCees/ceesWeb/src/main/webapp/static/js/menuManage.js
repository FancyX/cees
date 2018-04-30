/**
 * 显示新增窗口
 * 
 * @memberOf {TypeName}
 * @return {TypeName}
 */
var showAddWindow = function(from, nodePama) {
    // 初始化对话框
	 $("#dialog-confirm").dialog("open");
    $("#dialog-confirm").dialog(
        {
            modal: true,             // 创建模式对话框
			height: 350,
			width:400 ,
            autoOpen: true,
            buttons: {
                   "确定": function() {
				
					alert('demo 就到这了！！');
					window.location.reload();
                },
                "取消": function() { 
				$(this).dialog('close'); 
				return false;
				
				}
            }
        }
    );
}

/**
 * 显示修改窗口
 * 
 * @memberOf {TypeName}
 * @return {TypeName}
 */
var showEditWindow = function(from, id) {
	if (id == 'root') {
		$.alert('不能对根节点执行修改操作!');
		return;
	}

	var editId;
	if (from == "tree")
		editId = id;
	else {
		var ids = $("#classifiSystemList").jqGrid('getGridParam', 'selarrrow');
		if (!ids || ids.length != 1) {
			$.alert("请选择一个要修改的分类体系");
			return false;
		}
		editId = ids[0];
	}
	// 弹出新建窗口之前先清除错误信息
	$("input.error").removeClass("error");
	$("label.error").css("display", "none");
	// 设置公用窗口标题
	$("#editor").dialog("option", "title", "修改分类体系");
	// 重置form表单
	$("#editor-form").resetForm();

	// 加载选中记录的值
	$.ajax($.WEB_ROOT + '/aip/project/classifiSystem/showClassifiSystem.do', {
		data : jQuery.param({
			"classifiSystemId" : editId
		}, true),
		success : function(data, statusText) {
			if (statusText == 'success') {
				$("#classifiSystemEntity\\.sortName").val(data['classifiSystemEntity'].sortName);
				$("#classifiSystemEntity\\.sortCode").val(data['classifiSystemEntity'].sortCode);
				$("#parentName").val(data['classifiSystemEntity'].parentName == null ? '根节点' : data['classifiSystemEntity'].parentName);
				$("#parentID").val(data['classifiSystemEntity'].parentID);
				$("#level").val(data['classifiSystemEntity'].level);
				$("#id").val(data['classifiSystemEntity'].id);
				$("#editor").dialog("open");// 弹出窗口
			}
		}
	});
	// 设置公用窗口按钮操作
	$("#editor").dialog("option", "buttons", [{
			text : "提交",
			id : "btn_submit",
			click : function() {
				var validate = $("#editor-form").validate().form();
				if (validate) {
					$("#classifiSystemEntity\\.sortCode").val($("#classifiSystemEntity\\.sortCode").val().toUpperCase());
					$.ajax($.WEB_ROOT + '/aip/project/classifiSystem/checkEditParentId.do', {
						data : jQuery.param({
							"editId" : $("#id").val(),
							"newParentId" : $("#parentID").val()
						}, true),
						success : function(data, statusText) {
							if (data.result > 0) {
								$.alert('上级分类不能为当前节点或当前节点的子节点，请重新选择');
								return;
							} else {
								$.ajax($.WEB_ROOT + '/aip/project/classifiSystem/checkBeforeEditClassifiSystem.do', {
									data : jQuery.param({
										"sortCode" : $("#classifiSystemEntity\\.sortCode").val(),
										"sortName" : $("#classifiSystemEntity\\.sortName").val(),
										"parentID" : $("#parentID").val(),
										"id" : $("#id").val()
									}, true),
									success : function(data, statusText) {
										if (data.codeCheckResult > 0) {
											$.alert('已存在分类代码为[' + $("#classifiSystemEntity\\.sortCode").val() + ']的分类体系！');
											return;
										} else if (data.nameCheckResult > 0) {
											$.alert('该分类下已存在分类名称为[' + $("#classifiSystemEntity\\.sortName").val() + ']的分类体系！');
											return;
										} else {
											$("#editor-form").ajaxSubmit({
												url : $.WEB_ROOT + '/aip/project/classifiSystem/editClassifiSystem.do',
												success : function(data, statusText) {
													if (data['success']) {
														$.alert('修改分类体系成功', '提示', function() {
															$(this).dialog("close");
															$("#editor").dialog("close");
															$("#classifiSystemList").jqGrid().trigger("reloadGrid");// 刷新Gride
															$("#editor").parent().unmask();
															// refreshTreeForEdit();
															$("#tree").dynatree("getTree").reload();
															$("#selectParentTree").dynatree("getTree").reload();
														});
													} else {
														$.alert('修改分类体系失败');
														$("#editor").parent().unmask();
													}

												},
												error : function(jqXHR, textStatus, errorThrown) {
													$("#editor").parent().unmask();
												}
											});
										}
									}
								});
							}
						}
					});
				}
			}
		}, {
			text : "取消",
			click : function() {
				$("#editor-form").resetForm();
				$("#editor").dialog("close");
			}
		}]);
}

/**
 * 显示查看窗口
 * 
 * @memberOf {TypeName}
 * @return {TypeName}
 */

var showDetailWindow = function(obj) {
	// 弹出新建窗口之前先清除错误信息
	$("input.error").removeClass("error");
	$("label.error").css("display", "none");

	// 设置公用窗口标题
	$("#detail").dialog("option", "title", "查看分类体系");

	$("#detail").dialog("option", "buttons", [{
			text : "取消",
			click : function() {
				$("#detail").dialog("close");
			}
		}]);

	$.ajax($.WEB_ROOT + '/aip/project/classifiSystem/showClassifiSystem.do', {
		data : jQuery.param({
			"classifiSystemId" : obj
		}, true),
		success : function(data, statusText) {
			if (statusText == 'success') {
				$("#sortCode").html(data['classifiSystemEntity'].sortCode);
				$("#sortName").html(data['classifiSystemEntity'].sortName);
				$("#parentSortName").html(data['classifiSystemEntity'].parentName);
				$("#detail").dialog("open");// 弹出窗口
			}
		}
	});
}

var selectParentTreeWindow = function() {
	// 弹出新建窗口之前先清除错误信息
	$("input.error").removeClass("error");
	$("label.error").css("display", "none");

	// 设置公用窗口标题
	$("#selectParentTreeWindow").dialog("option", "title", "查看分类体系");

	$("#selectParentTreeWindow").dialog("option", "buttons", [{
			text : "取消",
			click : function() {
				$("#selectParentTreeWindow").dialog("close");
			}
		}]);
	$("#selectParentTree").dynatree("getTree").reload();
	$("#selectParentTreeWindow").dialog("open");// 弹出窗口
}

/**
 * 删除记录
 * 
 * @return {TypeName}
 */
var deleteRows = function(from, id) {
	if (id == 'root') {
		$.alert('不能对根节点执行删除操作!');
		return;
	}

	var ids = $("#classifiSystemList").jqGrid('getGridParam', 'selarrrow');
	var delIds = new Array();
	if (from == "tree")
		delIds[0] = id;
	else
		delIds = ids;

	if (delIds == null || delIds.length == 0) {
		$.alert('请选择要删除的记录');
	} else {
		$.confirm("您确定要删除选择的分类体系吗？", '提示', function(value) {
			if (!value) {
				return false;
			}
			$.ajax({
				type : "POST",
				dataType : "json",
				url : $.WEB_ROOT + '/aip/project/classifiSystem/deleteClassifiSystem.do',
				data : jQuery.param({
					"selectedIds" : delIds
				}, true),
				success : function(msg) {
					$.alert('删除成功');
					$("#classifiSystemList").jqGrid().trigger("reloadGrid", [{
							page : 1
						}]);// 刷新Gride
					$("#tree").dynatree("getTree").reload();
				},
				error : function(msg) {
					$.alert('删除失败');
				}
			});
		});
	}
}

var refreshTreeForEdit = function() {
	var refreshNodeId = $("#parentID").val();
	if (!refreshNodeId) {
		$("#tree").dynatree("getTree").reload();
		return;
	}
	var refreshNode = $("#tree").dynatree("getTree").getNodeByKey(refreshNodeId);
	refreshNode.data.isLazy = true;
	refreshNode.data.isFolder = true;
	refreshNode.reloadChildren(function() {
		var node = $("#tree").dynatree("getTree").getNodeByKey(refreshNodeId);
		node.expand(true);
	})
}

var refreshTreeForDel = function(from, id) {
	if (from == "tree") {
		var refreshNode = $("#tree").dynatree("getTree").getNodeByKey(id);
		var parentNode = refreshNode.getParent();
		// 判断除了该节点外是否还有其他兄弟节点 如果有则刷新被删除节点上层节点 否则重新加载树
		if (parentNode.countChildren() > 1)
			parentNode.reloadChildren();
		else
			parentNode.getParent().reloadChildren();
	} else {
		$("#tree").dynatree("getTree").reload();
	}
}
