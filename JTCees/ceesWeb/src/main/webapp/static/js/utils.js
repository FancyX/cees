/**
 * Created with IntelliJ IDEA.
 * User: wangchongyang
 * Date: 13-5-6
 * Time: 上午10:48
 * To change this template use File | Settings | File Templates.
 */

/**
 * 数字格式化，会把数字的整数部分,格式化为每三位已逗号分隔 eg: 原数字：6548945.55 格式化后： 6,548,945.55
 * 
 * @param num
 * @returns 格式化后(整数部分 每三位分隔的字符串)
 */
function formatNumber(num) {
	if (isNaN(num)) {
		return 0;
	}
	if (num == '') {
		return 0;
	}
	var numStr = new String(num);
	var integerStr = numStr.split(".")[0]; // 整数部分
	var dec = numStr.split(".").length > 1 ? numStr.split(".")[1] : '';// 小数部分
	var len = integerStr.length;
	var a = (len - 1) / 3;
	var m = len % 3;
	m = m == 0 ? 3 : m;

	var res = integerStr.substr(0, m);
	for ( var i = 1; i <= a; i++) {
		res = res.concat(',');
		res = res.concat(integerStr.substr(m + 3 * (i - 1), 3));
	}
	if (dec != "" && dec.length > 0) {
		res = res.concat(".").concat(dec);
	}

	return res;
}

// 时间格式化函数
function formatDate(val) {
	if (val == null || val == '') {
		return '';
	}
	var d_minutes, d_hours, d_days;
	var timeNow = new Date().getTime();
	var d = (timeNow - val) / 1000;
	d_days = Math.round(d / (24 * 60 * 60));
	d_hours = Math.round(d / (60 * 60));
	d_minutes = Math.round(d / 60);
	d_secend = Math.round(d);
	var s = new Date();
	s.setTime(val);
	return (s.getFullYear() + "-" + formatStyle((s.getMonth() + 1)) + "-" + formatStyle(s
			.getDate()));
}

// 将小于10的日期前加0
function formatStyle(dateTime) {
	if (dateTime < 10) {
		return "0" + dateTime;
	}
	return dateTime;
}

function myformatter(date) {
	var y = date.getFullYear();
	var m = date.getMonth() + 1;
	var d = date.getDate();
	return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d);
}
function myparser(s) {
	if (!s)
		return new Date();
	var ss = (s.split('-'));
	var y = parseInt(ss[0], 10);
	var m = parseInt(ss[1], 10);
	var d = parseInt(ss[2], 10);
	if (!isNaN(y) && !isNaN(m) && !isNaN(d)) {
		return new Date(y, m - 1, d);
	} else {
		return new Date();
	}
}

// 除法函数，用来得到精确的除法结果
// 说明：javascript的除法结果会有误差，在两个浮点数相除的时候会比较明显。这个函数返回较为精确的除法结果。
// 调用：accDiv(arg1,arg2)
// 返回值：arg1除以arg2的精确结果
function accDiv(arg1, arg2) {
	var  r1 = 0,  r2 = 0, t1, t2, n, m;
	try {
		r1 = arg1.toString().split(".")[1].length;
	} catch (e) {
        r1 = 0;
	}
	try {
		r2 = arg2.toString().split(".")[1].length;
	} catch (e) {
        r2 = 0;
	}
	// 动态控制精度长度
	n = (r1 >= r2) ? r1 : r2;
    //m = (r1 >= r2) ? r1-r2 : r2-r1;
	with (Math) {
		t1 = Number(arg1.toString().replace(".", ""));
		t2 = Number(arg2.toString().replace(".", ""));
		return ((t1 / t2) * pow(10, r2-r1)).toFixed(n<2?2:n);
	}
}

// 给Number类型增加一个div方法，调用起来更加方便。
Number.prototype.div = function(arg) {
	return accDiv(this, arg);
};


//说明：javascript的乘法结果会有误差，在两个浮点数相乘的时候会比较明显。这个函数返回较为精确的乘法结果。
//调用：accMul(arg1,arg2)
//返回值：arg1乘以arg2的精确结果
function accMul(arg1,arg2)
{
    var r1, r2, m, n;
    var m=0,s1=arg1.toString(),s2=arg2.toString();
    try{
        r1=s1.split(".")[1].length;
    }catch(e){
        r1 = 0;
    }
    try{
        r2=s2.split(".")[1].length;
    }catch(e){
        r2 = 0;
    }
    // 动态控制精度长度
    n = (r1 >= r2) ? r1 : r2;
    m = r1 + r2;
    return (Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10, m)).toFixed(n);

}
//给Number类型增加一个mul方法，调用起来更加方便。
Number.prototype.mul = function (arg){
    return accMul(arg, this);
}


// 加法函数，用来得到精确的加法结果
// 说明：javascript的加法结果会有误差，在两个浮点数相加的时候会比较明显。这个函数返回较为精确的加法结果。
// 调用：accAdd(arg1,arg2)
// 返回值：arg1加上arg2的精确结果
function accAdd(arg1, arg2) {
	var r1, r2, m, n;
	try {
		r1 = arg1.toString().split(".")[1].length;
	} catch (e) {
		r1 = 0;
	}
	try {
		r2 = arg2.toString().split(".")[1].length;
	} catch (e) {
		r2 = 0;
	}
	m = Math.pow(10, Math.max(r1, r2));
	// 动态控制精度长度
	n = (r1 >= r2) ? r1 : r2;
	return ((arg1 * m + arg2 * m) / m).toFixed(n);
}

// 给Number类型增加一个add方法，调用起来更加方便。
Number.prototype.add = function(arg) {
	return accAdd(arg, this);
};
// 减法函数
function accSub(arg1, arg2) {
	var r1, r2, m, n;
	try {
		r1 = arg1.toString().split(".")[1].length;
	} catch (e) {
		r1 = 0;
	}
	try {
		r2 = arg2.toString().split(".")[1].length;
	} catch (e) {
		r2 = 0;
	}
	m = Math.pow(10, Math.max(r1, r2));
	// last modify by deeka
	// 动态控制精度长度
	n = (r1 >= r2) ? r1 : r2;
	return ((arg2 * m - arg1 * m) / m).toFixed(n);
}
// /给number类增加一个sub方法，调用起来更加方便
Number.prototype.sub = function(arg) {
	return accSub(arg, this);
};


//给Date类型增加一个addaddMonth方法，调用起来更加方便。每月默认30天。
Date.prototype.addMonth = function(arg) {
	var d = this.getTime() + arg * 30 * 24 * 60 * 60 * 1000;
	return new Date(d);
};

//给Date类型增加一个addaddMonth方法，调用起来更加方便。每月默认30天。
Date.prototype.subMonth = function(arg) {
	var d = this.getTime() - arg * 30 * 24 * 60 * 60 * 1000;
	return new Date(d);
};


//计算两个日期之间相差的月份。
Date.prototype.monthInterval = function(arg) {
	var tyear = this.getFullYear();
	var ayear = arg.getFullYear();
	var tmonth = this.getMonth();
	var amonth = arg.getMonth();
	
	if(tyear < ayear){
		return 0;
	}else if(tyear == ayear){
		if(tmonth < amonth){
			return 0;
		}else{
			return tmonth - amonth;
		}
	}else{
		return (tyear - ayear) * 12 + (tmonth - amonth);
	}
	
};

//计算两个日期之间相差的天数。
function dateDiff(start, end) {
    var s = start.split("-");
    var e = end.split("-");
    var sd = new Date(s[0], s[1] - 1, s[2]);
    var ed = new Date(e[0], e[1] - 1, e[2]);
    return (ed - sd) / (24 * 60 * 60 * 1000) + 1;
}


/**
 * 文件名:jquery.liu.select.js 功能说明:本js文件为jquery类库的一个插件,主要实现对select的操作.
 * 编写日期:2008/03/12
 */
// 得到select项的个数
jQuery.fn.size = function() {
	if(jQuery(this).get(0).options==undefined){
		return jQuery(this).length;
	}
    return jQuery(this).get(0).options.length;
};
// 获得选中项的索引
jQuery.fn.getSelectedIndex = function() {
    return jQuery(this).get(0).selectedIndex;
};
// 获得当前选中项的文本
jQuery.fn.getSelectedText = function() {
    if (this.size() == 0) {
        return "下拉框中无选项";
    } else {
        var index = this.getSelectedIndex();
        return jQuery(this).get(0).options[index].text;
    }
};
// 获得当前选中项的值
jQuery.fn.getSelectedValue = function() {
    if (this.size() == 0) {
        return "下拉框中无选中值";
    } else {
        return jQuery(this).val();
    }
};
// 设置select中值为value的项为选中
jQuery.fn.setSelectedValue = function(value) {
    jQuery(this).get(0).value = value;
};
// 设置select中文本为text的第一项被选中
jQuery.fn.setSelectedText = function(text) {
    var isExist = false;
    var count = this.size();
    for ( var i = 0; i < count; i++) {
        if (jQuery(this).get(0).options[i].text == text) {
            jQuery(this).get(0).options[i].selected = true;
            isExist = true;
            break;
        }
    }
    if (!isExist) {
       // $.jBox.tip('下拉框中不存在该项', 'error');
    }
};
// 设置选中指定索引项
jQuery.fn.setSelectedIndex = function(index) {
    var count = this.size();
    if (index >= count || index < 0) {
      //  $.jBox.tip('选中项索引超出范围', 'error');
    } else {
        jQuery(this).get(0).selectedIndex = index;
    }
};
// 判断select项中是否存在值为value的项
jQuery.fn.isExistItem = function(value) {
    var isExist = false;
    var count = this.size();
    for ( var i = 0; i < count; i++) {
        if (jQuery(this).get(0).options[i].value == value) {
            isExist = true;
            break;
        }
    }
    return isExist;
};
// 向select中添加一项，显示内容为text，值为value,如果该项值已存在，则提示
jQuery.fn.addOption = function(text, value) {
    if (this.isExistItem(value)) {
        //$.jBox.tip('待添加项的值已存在', 'error');
    } else {
        jQuery(this).get(0).options.add(new Option(text, value));
    }
};
// 删除select中值为value的项，如果该项不存在，则提示
jQuery.fn.removeItem = function(value) {
    if (this.isExistItem(value)) {
        var count = this.size();
        for ( var i = 0; i < count; i++) {
            if (jQuery(this).get(0).options[i].value == value) {
                jQuery(this).get(0).remove(i);
                break;
            }
        }
    } else {
       // $.jBox.tip('待删除的项不存在!', 'error');
    }
};
// 删除select中指定索引的项
jQuery.fn.removeIndex = function(index) {
    var count = this.size();
    if (index >= count || index < 0) {
      //  $.jBox.tip('待删除项索引超出范围', 'error');
    } else {
        jQuery(this).get(0).remove(index);
    }
};
// 删除select中选定的项
jQuery.fn.removeSelected = function() {
    var index = this.getSelectedIndex();
    this.removeIndex(index);
};
// 清除select中的所有项
jQuery.fn.clearAll = function() {
    jQuery(this).get(0).options.length = 0;
};

/**
 * 该方法用于构造传入controller的参数，带有ajax请求的页面均用到，因此提出来
 * @param object
 * @param base
 * @param igno
 * @param merge
 * @return {*|{}}
 */
function convertParam(object, base, igno, merge){
    var obj = merge || {};
    if(!object){
        return obj;
    }
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
    }
    return obj;
}

function  checkNumber(value) {
	if(value=='-'){
		return false;
	}
	if(value=='.'){
		return true;
	}
	return /^[\-]?(([0-9]+))?([\.]([0-9]+))?$/.test(value);
}