/**
 * 货架规格管理页面
 * Created by zhangxingbo on 2018/3/18.
 */
$(function () {
    loadGrid();
    query();
    $('#addWindow').jqm({
        closeClass: 'jqmClose',
        overlayClass: 'whiteOverlay',
        retrieveTop:function(){
            return 150;
        },
        movable: true
    });

    $('#saveShelfSpecification').click(function() {
        saveShelfSpecification();
    });
})

/**
 *  异常数据列表
 */
function loadGrid() {
    $('#ordertable').datagrid({
        height: 320,
        nowrap: true,
        collapsible: true,
        striped: true,
        url: null,
        idField: 'id',
        sortOrder: 'desc',
        remoteSort: true,
        loadMsg: '数据加载中......',
        columns: [[
            {field: 'projectnumber', title: '工程编号', width: 80},
            {field: 'gcmc', title: '工程名称', width: 75},
            {field: 'sn_project', title: '工程抗压序号', width: 60},
            {field: 'testnumber', title: '送检编号', width: 60},
            {field: 'sn_test', title: '提交序号', width: 60},
            {field: 'state', title: '状态', width: 90},
            {field: 'sgbw', title: '施工部位', width: 90},
            {field: 'sjqd', title: '设计强度', width: 90},
            {field: 'npqd', title: '拟配强度', width: 90},
            {field: 'yqtld', title: '要求塌落度', width: 90},
            {field: 'sctld', title: '实测塌落度', width: 90},
            {field: 'shb', title: '水灰比', width: 90},
            {field: 'sl', title: '砂率', width: 90},
            {
                field: 'zmrq', title: '制模日期', width: 130, formatter: function (value, rowData, rowIndex) {
                    return new Date(rowData.zmrq).format("yyyy-MM-dd");
                }
            },
            {field: 'yqlq', title: '要求龄期', width: 90},
            {
                field: 'yqsyrq', title: '要求试验日期', width: 130, formatter: function (value, rowData, rowIndex) {
                    return new Date(rowData.yqsyrq).format("yyyy-MM-dd");
                }
            },
            {field: 'sjbh', title: '试件编号', width: 90},
            {field: 'sjcc', title: '试件尺寸', width: 90},
            {
                field: 'status', title: '状态', width: 60,
                formatter: function (value, rowData, rowIndex) {
                    //货架状态
                    if (0 == value) {
                        return "禁用";
                    } else if (1 == value) {
                        return "启用";
                    }
                }
            },
            {
                field: 'handle', title: '操作', width: 100,
                formatter: function (value, rowData, rowIndex) {

                        return '<a href="javascript:" onclick="editShelfTypeShow(' + rowIndex + ')">' + "修改" + '</a>' +
                            '<a>' + "   " + '</a>' +
                            '<a href="javascript:" onclick="delShelfType(' + rowIndex + ')">' + "删除" + '</a>';

                }
            }
        ]],
        pagination: true,
        rownumbers: true
    });
}

/**
 * 查询
 */
function query(){
    var validator=$('#searchForm').validate(formValidator);
    if(validator.form()) {
        var queryParams = $('#ordertable').datagrid('options').queryParams;
        $('#ordertable').datagrid('options').url = '/hunNingTuKangYa/search.json';
        // $('#ordertable').datagrid('options').url = '/hntky/search.json';
        queryParams.projectnumber = $('#projectnumber').val();
        queryParams.state = $('#state').val();
        queryParams.zmrqstart = $('#zmsj_s').val();
        queryParams.zmrqend = $('#zmsj_e').val();
        $("#ordertable").datagrid('clearSelections');
        $("#ordertable").datagrid('load');
    }
}
/**
 * 添加
 */
function addShelfType() {
    $('#shelfCode1').removeAttr("readonly");
    $("#addForm")[0].reset();
    $("#addForm").validate(formValidator).resetForm();
    $('#saveOrEditType').val('');
    $('.tit').text("添加");
    $('#addWindow').jqmShow();
}
/**
 * 修改
 * @param rowIndex
 */
function editShelfTypeShow(rowIndex){
    var rowData = $('#ordertable').datagrid("getRows")[rowIndex];
    $('#shelfCode1').val(rowData.shelfNo);
    $('#shelfCode1').attr("readonly",true);
    $('#shelfType1').val(rowData.shelfType);
    $('#length').val(rowData.length);
    $('#depth').val(rowData.depth);
    $('#height').val(rowData.height);
    $('#saveOrEditType').val(rowData.id);
    $('.tit').text("修改");
    $('#addWindow').jqmShow();
}

/**
 * 禁用货架类型
 * @param rowIndex
 */
function delShelfType(rowIndex){
    jqm.confirm({
        w:400,
        title:'提示',
        type:'attention',
        content:  '<h4>确定要更改货架状态吗？</h4>',
        self:self,
        onConfirm:function(){
            var data = $('#ordertable').datagrid("getRows")[rowIndex];
            var param = {};
            param.id = data.id;
            param.status = data.status == 1 ? 0 : 1;
            $.ajax({
                type:'POST',
                url:'/shelfSpecification/delete',
                data:convertParam(param),
                success:function(result){
                    if(result == 'success'){
                        Commons.showInfo('更改货架状态成功!');
                        $("#ordertable").datagrid('reload');
                    }else{
                        Commons.showError('更改货架状态失败!');
                    }

                }
            });
        }
    });
}

/**
 * 保存
 */
function saveShelfSpecification(){
    var validator = $('#addForm').validate(formValidator);
    if(validator.form() == false){
        return ;
    }
    var param= {};
    param.shelfNo = $('#shelfCode1').val().trim();
    param.shelfType = $('#shelfType1').val().trim();
    param.length = $('#length').val().trim();
    param.depth = $('#depth').val().trim();
    param.height = $('#height').val().trim();
    if($('#saveOrEditType').val() == null || $('#saveOrEditType').val() == ''){
        jQuery.ajax({
            type : 'POST',
            url : '/shelfSpecification/save',
            data:convertParam(param),
            success : function(result){
                if(result == 'success'){
                    $('#addWindow').jqmHide();
                    Commons.showSuccess("添加成功！");
                    $("#ordertable").datagrid('reload');
                }else if(result == 'exsit'){
                    Commons.showSuccess("添加失败,单位编码已存在");
                }else{
                    Commons.showSuccess("添加失败！");
                }
            },
            error:function(){
                Commons.showError("系统异常！");
            }

        });
    }else {
        param.id = $('#saveOrEditType').val();
        jQuery.ajax({
            type : 'POST',
            url : '/shelfSpecification/update',
            data:convertParam(param),
            success : function(result){
                if(result == 'success'){
                    $('#addWindow').jqmHide();
                    Commons.showSuccess("修改成功！");

                    $("#ordertable").datagrid('reload');
                }else if(result == 'exsit'){
                    Commons.showSuccess("修改失败,单位编码已存在");
                }else{
                    Commons.showSuccess("修改失败！");
                }
            },
            error:function(){
                Commons.showError("系统异常！");
            }

        });
    }

}
function convertParam(object, base, igno, merge){
    var obj = merge || {};
    for(var key in object) {
        if(!object.hasOwnProperty(key)) continue;
        var value = object[key];
        if (base) {
            if(/^\d+$/.test(key))
                key = base + '[' + key + ']';
            else
                key = base + '.' +key;
        }
        if(value instanceof Object) {
            arguments.callee(value, key , igno, obj);
        } else if(value instanceof Array) {
            var qs = {};
            for(var i = 0;i < value.length;i++) {
                qs[i] = value[i];
            }
            arguments.callee(qs, key, igno ,obj);
        } else if(!igno) {
            if(value != null) obj[key] = value;
        } else {
            obj[key] = value;
        }
    };
    return obj;
}

/**
 * 全仓下发
 */
function downloadShelfTypeMsg(){
    var params = {};
    params.shelfNo = $('#shelfNo').val().trim();
    params.shelfType = $('#shelfType').val().trim();

    jqm.confirm({
        w:400,
        title:'提示',
        type:'attention',
        content:'<h4>是否要全仓下发？</h4>',
        self:self,
        onConfirm:function(){
            $.ajax({
                type:'POST',
                url:'/shelfSpecification/downloadShelfTypeMsg',
                data:params,
                success:function(result){
                    if(result == 'success'){
                        Commons.showInfo('全仓下发成功!');
                    }else if(result == 'nodata'){
                        Commons.showError('没有需要全仓下发的数据!');
                    }else{
                        Commons.showError('全仓下发失败!');
                    }

                },
                error:function(){
                    Commons.showError("系统异常！");
                }
            });
        }
    });
}
/**
 * 验证是数字
 * @param value
 */
function validateNum(value){
    if(isNaN(value)){
        $("#priority").val("");
        Commons.showSuccess("请输入数字！");
    }
    if(value<0){
        $("#priority").val("");
        Commons.showSuccess("不能为负数！");
    }
}


