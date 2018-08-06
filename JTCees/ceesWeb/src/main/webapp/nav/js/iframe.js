//下拉选的初始化标识
var initSelect = false;
//父页面的用户的基础数据
var baseData;
//表格内选中
var selectCheck = undefined;
var selectCheckData = undefined;
//添加弹窗的html
var addModalHtml;
var tableIns;

/**
 * 初始化方法
 * 1、初始化固定的layer模块
 * 2、获取父页面数据
 * 3、获取表格数据
 *
 * tableFirstCol：表格数据初始化头部列，如果没有填null或者undefined即可
 * displayUrl：获取显示列的url
 * getDateUrl：获取数据的url
 * */
function init(tableFirstCol, displayUrl, selectUrl) {
    initLayerModels();
    //获取父页面数据备用
    baseData = window.parent.baseData;
    addModalHtml = $("#addModal").html();
    var isInitTable = true;
    initTable(tableFirstCol, displayUrl, selectUrl, isInitTable);
}

//初始化固定模块
function initLayerModels() {
    layui.use(['form', 'laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element'], function () {
        var laydate = layui.laydate,//日期
            laypage = layui.laypage,//分页
            layer = layui.layer, //弹层
            table = layui.table,//表格
            carousel = layui.carousel, //轮播
            upload = layui.upload,//上传
            element = layui.element, //元素操作
            form = layui.form; //表单

        form.render("select");

        //绑定所有时间组件
        var arr = jQuery("input[placeholder='yyyy-MM-dd']")
        for (var i = 0; i < arr.length; i++) {
            laydate.render({
                elem: arr[i]
            });
        }
    });
}


//初始化表格-并绑定基础事件
function initTable(tableFirstCol,
                   displayUrl,
                   selectUrl,
                   isInitTable) {
    //初始化table表格
    var loadTable = function (json) {

        if (json == null || json == undefined) {
            return;
        }

        //获取表头
        var getCols = function (json) {

            var data = json.data;
            var cols;
            if (tableFirstCol == undefined || tableFirstCol == null) {
                cols = [[]];
            } else {
                cols = tableFirstCol;
            }

            for (var i = 0; i < data.length; i++) {

                var row = data[i];
                var gridmc = row['gridmc'];
                var zw = row['zw'];
                var width = 80;
                if (zw.length > 4) {
                    width = width + (zw.length - 4) * 12;
                }
                if (gridmc.length - zw.length > 2) {
                    width += 24;
                }

                var col = {field: gridmc, title: zw, width: width};
                cols[0].push(col);
            }

            var toolbar = {fixed: 'right', align: 'center', toolbar: '#barDemo', title: '操作', width: 200};
            cols[0].push(toolbar);

            return cols;
        };

        //table表格初始化参数
        var tableOptions = {
            elem: '#tableData',
            height: 510,
            url: selectUrl, //数据接口
            page: true,//开启分页
            request: {
                pageName: 'page', //页码的参数名称，默认：page
                limitName: 'limit' //每页数据量的参数名，默认：limit
            },
            response: {
                statusName: 'code',//数据状态的字段名称，默认：code
                statusCode: 0,//成功的状态码，默认：0
                msgName: 'msg',//状态信息的字段名称，默认：msg
                countName: 'count', //数据总数的字段名称，默认：count
                dataName: 'data' //数据列表的字段名称，默认：data
            },
            where: {
                zmrqstart: jQuery("#beginTime").val(), //制模日期开始
                zmrqend: jQuery("#endTime").val()  //制模日期结束
            },
            skin: {
                size: 'sm'
            },
            size: 'sm',
            cols: getCols(json)
        };

        //执行一个 table 实例
        layui.use(['table'], function () {
            var table = layui.table;//表格
            if (isInitTable) {
                tableIns = table.render(tableOptions);
            } else {
                tableIns.reload(tableOptions);
            }

            //监听工具条
            //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            table.on('tool(test)', function (obj) {
                var data = obj.data //获得当前行数据
                    , layEvent = obj.event; //获得 lay-event 对应的值
                if (layEvent === 'del') {
                    deleteRow(obj, data);
                } else if (layEvent === 'edit') {
//                        layer.msg('编辑操作');
                    showUpdateModal(obj, data);
                } else if (layEvent === 'detail') {
                    showDetailModal(obj, data);
                } else if (layEvent === 'print') {
                    showPrintModal(obj, data);
                }
            });

            table.on('checkbox(test)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
                var oldStates = $(this).prop("checked");
                $(this).parents("tbody").find("tr td div input[type='checkbox']").prop("checked", false);
                $(this).parents("tbody").find("tr td div div").removeClass("layui-form-checked");

                if (oldStates) {
                    $(this).removeClass('layui-form-checked');
                    $(this).prop("checked", false);
                    selectCheckData = undefined;
                    selectCheck = undefined;
                } else {
                    selectCheckData = obj.data;
                    selectCheck = $(this);
                    $(this).addClass('layui-form-checked');
                    $(this).prop("checked", true);

                }


            });

        });
    };

    //检查返回值并执行回调
    var checkResult = function (resultJson, callback) {
        if (resultJson == null || resultJson == undefined) {
            failAlert("获取数据失败！");
            return;
        } else {
            if (resultJson.code == 0) {
                callback(resultJson);
            }
        }
    };

    //请求列数据-成功后请求表数据
    jQuery.ajax({
        type: 'post',
        url: displayUrl,
        dataType: 'json',
        data: {},
        async: false,
        success: function (json) {
            checkResult(json, loadTable);
        },
        err: function (err) {
            failAlert("连接服务器失败！");
        }
    });
}

//初始化弹窗
function initModal(data, formID) {
    //初始化下拉选
    if (initSelect == false) {
        jQuery('.layui-form-select input').unbind("blur").on("blur", function () {
            var select = $(this).parent().parent().siblings("select");

            var optionStr = '<option value="' + $(this).val() + '">' + $(this).val() + '</option>';
            select.append(optionStr);
            select.val($(this).val());
        });
        initSelect = true;
    }

    if (data == null || data == undefined) {
        return;
    }

    for (var key in data) {
        var value = data[key];
        if (value == null || value == undefined || value == "") {
            continue;
        }

        var dom = jQuery("#" + formID + " [name='" + key + "']");

        if (dom.length == 0) {
            dom = jQuery("#" + formID + " [name='" + key.toLocaleUpperCase() + "']");
        }


        //判断文本框类型
        if (dom.is('input')) {

            //判断为时间
            if (dom.attr('placeholder') == "yyyy-MM-dd") {
                layui.use(['laydate'], function () {
                    var laydate = layui.laydate;//日期
                    laydate.render({
                        elem: dom[0],
                        value: new Date(value),
                        isInitValue: true //允许填充初始值
                    });
                });
            } else {//普通输入框
                dom.val(value);
            }
        } else if (dom.is('select')) {//选择框
            if (typeof(dom.attr("lay-search")) == "undefined") {

                layui.use('form', function () {
                    var form = layui.form; //表单
                    dom.val(value);
                    form.render("select");
                });
            } else {
                var dl = dom.next().find("dl");

                if (dom.find("option[value='" + value + "']").length == 0) {
                    var optionStr = '<option value="' + value + '">' + value + '</option>';
                    dom.append(optionStr);

                    var ddStr = '<dd lay-value="' + value + '" class>' + value + '</dd>';
                    dl.append(ddStr);
                }
                dom.val(value);
                dom.next().find("input").val(value);
            }
        }
    }
}



//-----------------------------通用工具方法-------------------------------
//tds为数组包含jq对象
function getPrintModelDom(name, tds) {
    for (var i = 0; i < tds.length; i++) {

        var td = tds[i];
        var names = td.attr("name").split(",");
        for (var j = 0; j < names.length; j++) {
            var domName = names[j].toLowerCase();
            if (domName == name.toLowerCase()) {
                return td;
            }
        }
    }
    return undefined;
}

//不是所需权限
function isNotPower(ceces_user) {
    if (ceces_user.part == "查询用户") {
        failAlert("您的权限等级不足！");
        return true;
    }
    return false;
}

//格式化时间
function getTime(time) {

    var date = new Date(time);
    var Y = date.getFullYear() + '-';
    var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
    var D = date.getDate() + ' ';
    var h = date.getHours() + ':';
    var m = date.getMinutes() + ':';
    var s = date.getSeconds();

    return Y + M + D;
}

//判断是否为null
function isNull(para) {
    if (para == null || para == undefined || para == '') {
        return true;
    }
    return false;
}

//弹出失败信息
function failAlert(msg) {
    layer.alert(msg, {
        icon: 2,
        skin: 'layer-ext-moon'
    });
}

//弹出成功信息
function successAlert(msg) {
    layer.alert(msg, {
        icon: 1,
        skin: 'layer-ext-moon'
    });
}