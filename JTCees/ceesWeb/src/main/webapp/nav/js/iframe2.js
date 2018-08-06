//从父页面获取的基础数据
var baseData = undefined;
var moadlHtmls = {
    add: undefined,
    update: undefined,
    detail: undefined,
    print: undefined
};

//初始化方法集合
function init() {
    initGetBaseData();
    initGetModalHtml();
    initGetShowCol(initTable);
}

//获取列并回调
function initGetShowCol(callback) {
    //请求列数据-成功后请求表数据
    jQuery.ajax({
        type: 'post',
        url: urls.showCol,
        dataType: 'json',
        data: {},
        async: false,
        success: function (json) {
            if (json == null || json == undefined) {
                failAlert("获取数据失败！");
                return;
            } else {
                if (json.code == 0) {
                    callback(json);
                }
            }
        },
        err: function (err) {
            failAlert("连接服务器失败！");
        }
    });
}

//获取父页面数据
function initGetBaseData() {
    baseData = window.parent.baseData;
}

//获取弹窗HTML代码
function initGetModalHtml() {
    moadlHtmls.add = jQuery("#addModal").html();
    moadlHtmls.update = jQuery("#updateModal").html();
    moadlHtmls.detail = jQuery("#detailModal").html();
    moadlHtmls.print = jQuery("#printModal").html();
}


//-----------------------------通用工具方法-------------------------------

function initLayuiFormSelect() {
    layui.use(['form'], function () {
        var form = layui.form; //表单
        form.render("select");
    });
}

function initLayuiLaydate(formID) {
    layui.use(['laydate'], function () {
        var laydate = layui.laydate;//日期
        //绑定所有时间组件
        var arr = jQuery('#' + formID + " input[placeholder='yyyy-MM-dd']");
        for (var i = 0; i < arr.length; i++) {
            laydate.render({
                elem: arr[i]
            });
        }
    });
}
function initLayuiLaydateByArr(jqArr) {
    layui.use(['laydate'], function () {
        var laydate = layui.laydate;//日期
        for (var i = 0; i < jqArr.length; i++) {
            laydate.render({
                elem: jqArr[i]
            });
        }
    });
}

function initLayuiLaydateTime(jqArr, time) {
    layui.use(['laydate'], function () {
        var laydate = layui.laydate;//日期
        for (var i = 0; i < jqArr.length; i++) {
            laydate.render({
                elem: jqArr[i],
                value: time
            });
        }
    });
}


//初始化弹窗-input
function initModalInput(data, formID) {

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
            if (dom.attr('placeholder') != "yyyy-MM-dd") {
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
        }
    }
}


//根据天数获得新的时间
function getNewTime(time, day) {
    return new Date(time.getTime() + (day * 24 * 60 * 60 * 1000)); //后一天
}

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




