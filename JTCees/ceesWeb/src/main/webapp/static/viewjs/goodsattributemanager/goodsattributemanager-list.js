$(function(){
//    $("#but_validate").hide();
    if (ErrorMsg != '') {
        Commons.showInfo(ErrorMsg);
    }
    $('.j_btn_tip').btnSelect();//按钮下拉初始化
    $('#uploadshow').jqm({});
    $('#kc_submit01').bind('click',function(){
        alert('后台提交操作');
        $('#id01').bsHide();//模态框的关闭函数,在成功提交后执行
    });
    $(".box h1").next(".text").hide();
    $(".box h1").toggle(function(){
        $(this).next(".text").animate({height: 'toggle', opacity: 'toggle'}, "slow");
    },function(){
        $(this).next(".text").animate({height: 'toggle', opacity: 'toggle'}, "slow");
    });
}) ;
attributeIndex = 0;

//查询商品属性
function queryGoodsAttributeManager(){
//    var attributeIndex = 0;
    var isErp;
    var goodsCode = $('#goodsCode').val();
    var goodsName = $('#goodsName').val();
    if(null == goodsCode || goodsCode == ''){
        Commons.showWarn("请输入商品编码");
        return null;
    }
    jQuery.ajax({
        type : 'POST',
        data :
        {
            "goodsCode":goodsCode,         //商品编码，必输入项
            "goodsName":goodsName          //商品名
        },
        url : '/goodsattributemanager/querygoodsattributemanager.json',
        success : function(data){
            var goodsAttributeCheckResult;
            var goodsAttributeFlag;
            var goodsAttributeManager1 = data.goodsAttributeManager1
            if(null==goodsAttributeManager1||goodsAttributeManager1==''){
                Commons.showWarn("该商品不存在，请重新输入商品编号进行查询");
                return null;
            }
            if(null!=goodsAttributeManager1[0]||goodsAttributeManager1[0]!=''){
                goodsAttributeCheckResult = goodsAttributeManager1[0].checkResult;
                //=======================20131206 张颖 修改bug#14468  操作：在该处新增语句   goodsAttributeFlag = goodsAttributeManager1[0].newFlag;;===================
//                goodsAttributeFlag = goodsAttributeManager1[0].newFlag;
            }
            //Commons.showWarn(goodsAttributeCheckResult);
            if(null!=goodsAttributeCheckResult){
                if(goodsAttributeCheckResult==0){
                    Commons.showWarn("该商品还未验证，请及时验证");
//                    $("#but_validate").show();
                }
//                else{
//                    $("#but_validate").hide();
//                }
            }

            var basicAttributeList = data.basicAttributeList;
            var expandAttributeList = data.expandAttributeList;
            var storageAttributeList = data.storageAttributeList;
            var flowList = data.flowList;
            var delivercenterCodes = data.insertListM;

            if(null!=goodsAttributeManager1){
                $('#goodsCodeShow').html(goodsAttributeManager1[0].goodsCode);
                $('#goodsCodeExport').val(goodsAttributeManager1[0].goodsCode); //获得商品编码，导出时作为传到后台的查询条件
                $('#goodsNameShow').html(goodsAttributeManager1[0].goodsName);
                $('#goodsOwnerNo').html(goodsAttributeManager1[0].ownNo);
            }
            //展示基本属性
            if(null!=basicAttributeList ){
                var strtd0 = '';
                var strtr0 = '';
                var str0 = '';
                for(var i=0;i<(basicAttributeList.length/5)+1;i++){
                    for(var j=i*4;j<(i+1)*4;j++){
                        if(null!=basicAttributeList[j]){
                            //alert(basicAttributeList[j].updateLevel);
//                            if(basicAttributeList[j].updateLevel==2){
//                                isErp = 'readonly';
//                            }else{
//                                isErp = '';
//                            }
                            strtd0+="<td class='textL' width='80'><label class='textL'>"+basicAttributeList[j].attributeName+"</label></td>" +
                                "<td class='attribute textL'>"+
                                "<input type='hidden' id='giid' name='giid' value='"+goodsAttributeManager1[0].goodsCode+"'>" +
                                "<input type='hidden' id='goodsCodeLog' name='goodsCodeLog' value='"+goodsAttributeManager1[0].goodsCode+"'>" +
                                "<input type='hidden' id='id"+attributeIndex+"' value='"+basicAttributeList[j].attributeCode+"'>" +
                                "<input type='hidden' id='type"+attributeIndex+"' value='"+basicAttributeList[j].attributeType+"'>" +
                                "<input type='hidden' id='name"+attributeIndex+"' value='"+basicAttributeList[j].attributeName+"'>" ;
                            //如果该属性的显示方式为下拉列表
                            if(basicAttributeList[j].showType==1)
                            {
                                var options = "";
                                var attributeContents =basicAttributeList[j].attributeContents;
                                if( attributeContents != null)
                                {
                                    if(basicAttributeList[j].attributeValue == "" || basicAttributeList[j].attributeValue==null)
                                    {
                                        options += options += "<option value='' >请选择</option>";
                                    }
                                    for(var optionIndex = 0;optionIndex<attributeContents.length;optionIndex++)
                                    {

                                        if(basicAttributeList[j].attributeValue == attributeContents[optionIndex].content)
                                        {
                                            options += "<option value='"+attributeContents[optionIndex].content+"' selected>"+attributeContents[optionIndex].name+"</option>";
                                        }
                                        else
                                        {
                                            options += "<option value='"+attributeContents[optionIndex].content+"'>"+attributeContents[optionIndex].name+"</option>";
                                        }
                                    }
                                    if(options=="")
                                    {
                                        options = "<option value='"+basicAttributeList[j].attributeValue+"'>"+basicAttributeList[j].attributeValue+"</option>"
                                    }
                                }
                                strtd0+="<select class='select18' name='"+basicAttributeList[j].attributeValue+"' id='idAttribute"+attributeIndex+"'>"+options+"</select>";
                            }
                            else {
                                strtd0+= "<input type='text' name='"+basicAttributeList[j].attributeValue+"' id='idAttribute"+attributeIndex+"' class='textField18' value='"+(basicAttributeList[j].attributeValue || "")+"'>";
                            }

                            strtd0+="<input type='hidden' id='tempvalue"+attributeIndex+"' value='"+(basicAttributeList[j].attributeValue || "") +"'></td>";
                            attributeIndex ++;

                        }
                    }
                    strtr0="<tr>"+strtd0 +"</tr>";
                    str0+=strtr0;
                    strtd0='';
                    strtr0='';
                }
                $('#basic').html(str0);
            }
            //展示扩展属性
            if(null!=expandAttributeList ){
                var strtd1 = '';
                var strtr1 = '';
                var str1 = '';
                for(var i=0;i<(expandAttributeList.length/4)+1;i++){
                    for(var j=i*4;j<(i+1)*4;j++){
                        if(null!=expandAttributeList[j]) {
                            //alert(expandAttributeList[j].updateLevel);
                            //alert(expandAttributeList[j].updateLevel==2);
//                            if(expandAttributeList[j].updateLevel==2){
//
//                                isErp = 'readonly';
//                            }else{
//                                isErp = '';
//                            }
                            strtd1+="<td class='textL' width='80'><label class='textL'> "+expandAttributeList[j].attributeName+"</label></td>" +
                                "<td class='attribute textL'>" +
                                "<input type='hidden' id='giid' name='giid' value='"+goodsAttributeManager1[0].goodsCode+"'>" +
                                "<input type='hidden' id='goodsCodeLog' name='goodsCodeLog' value='"+goodsAttributeManager1[0].goodsCode+"'>" +
                                "<input type='hidden' id='id"+attributeIndex+"' value='"+expandAttributeList[j].attributeCode+"'>" +
                                "<input type='hidden' id='type"+attributeIndex+"' value='"+expandAttributeList[j].attributeType+"'>" +
                                "<input type='hidden' id='name"+attributeIndex+"' value='"+expandAttributeList[j].attributeName+"'>" ;
                            //如果该属性的显示方式为下拉列表
                            if(expandAttributeList[j].showType==1)
                            {
                                var options = "";
                                var attributeContents =expandAttributeList[j].attributeContents;
                                if( attributeContents != null)
                                {
                                    if(expandAttributeList[j].attributeValue == "" || expandAttributeList[j].attributeValue==null)
                                    {
                                        options += options += "<option value='' >请选择</option>";
                                    }
                                    for(var optionIndex = 0;optionIndex<attributeContents.length;optionIndex++)
                                    {

                                        if(expandAttributeList[j].attributeValue == attributeContents[optionIndex].content)
                                        {
                                            options += "<option value='"+attributeContents[optionIndex].content+"' selected>"+attributeContents[optionIndex].name+"</option>";
                                        }
                                        else
                                        {
                                            options += "<option value='"+attributeContents[optionIndex].content+"'>"+attributeContents[optionIndex].name+"</option>";
                                        }
                                    }
                                    if(options=="")
                                    {
                                        options = "<option value='"+expandAttributeList[j].attributeValue+"'>"+expandAttributeList[j].attributeValue+"</option>"
                                    }
                                }
                                strtd1+="<select class='select18' name='"+expandAttributeList[j].attributeValue+"' id='idAttribute"+attributeIndex+"' class='select18'>"+options+"</select>";
                            }
                            else {
                                strtd1+= "<input type='text' name='"+expandAttributeList[j].attributeValue+"' id='idAttribute"+attributeIndex+"' class='textField18' value='"+(expandAttributeList[j].attributeValue || "")+"'>";

                            }
                            strtd1+="<input type='hidden' id='tempvalue"+attributeIndex+"' value='"+(expandAttributeList[j].attributeValue || "")+"'></td>";
                            attributeIndex ++;
                        }
                    }
                    strtr1 = "<tr>"+strtd1 +"</tr>";
                    str1+=strtr1;
                    strtd1='';
                    strtr1='';
                }
                $('#expand').html(str1);
            }

            //仓储属性下拉动态下拉列表
            if(null!=storageAttributeList ){

                var stropt1 = '';
                var stropt2 = '';
                var strtd1 = '';
                var strtd2 = '';
                var strtr2 = '';
                var str2 = '';
                for(var i=0;i<delivercenterCodes.length;i++){

                    if(null!=delivercenterCodes[i]){
                        stropt1+="<option value='"+delivercenterCodes[i].delivercenterCode+"'>"+delivercenterCodes[i].delivercenterName+"</option>";
                    }
                }
                strtd1="<td class='textL' width='80'><label class='textL'> "+"配送中心"+"</label></td>"+"<td class='textL'><select class='select18' id='delivercenter' name='delivercenter' onchange='changeValue()'><option value=''>请选择</option>"+stropt1+"</select></select></td>"
                strtd2="<td class='textL' width='80'><label class='textL'> "+"库房"+"</label></td>"+"<td class='textL'><select class='select18' id='warehouse' name='warehouse' onchange='queryStoreAttribute()'></td>"
                strtr2="<tr>"+strtd1 +strtd2+"</tr>";
                str2+=strtr2;
                $('#storageList').html(str2);
                var strStorageAll = displayAttributeHTML(storageAttributeList);
                $('#storageAll').html(strStorageAll);
            }


            // 展示物流属性
            if(null!=flowList ){
                var strtd3 = '';
                var strtr3 = '';
                var str3 = '';
                for(var i=0;i<(flowList.length/4)+1;i++){
                    for(var j=i*4;j<(i+1)*4;j++){
                        if(null!=flowList[j]){
//                            if(flowList[j].updateLevel==2){
//                                isErp = 'readonly';
//                            }else{
//                                isErp = '';
//                            }
                            strtd3+="<td class='textL' width='80'><label class='textL'>"+flowList[j].attributeName+"</label></td>" +
                                "<td class='attribute textL'>" +
                                "<input type='hidden' id='giid' name='giid' value='"+goodsAttributeManager1[0].goodsCode+"'>" +
                                "<input type='hidden' id='goodsCodeLog' name='goodsCodeLog' value='"+goodsAttributeManager1[0].goodsCode+"'>" +
                                "<input type='hidden' id='id"+attributeIndex+"' value='"+flowList[j].attributeCode+"'>" +
                                "<input type='hidden' id='type"+attributeIndex+"' value='"+flowList[j].attributeType+"'>" +
                                "<input type='hidden' id='name"+attributeIndex+"' value='"+flowList[j].attributeName+"'>" ;
                            //如果该属性的显示方式为下拉列表
                            if(flowList[j].showType==1)
                            {
                                var options = "";
                                var attributeContents =flowList[j].attributeContents;
                                if( attributeContents != null)
                                {
                                    if(flowList[j].attributeValue == "" || flowList[j].attributeValue==null)
                                    {
                                        options += options += "<option value='' >请选择</option>";
                                    }
                                    for(var index = 0;index<attributeContents.length;index++)
                                    {

                                        if(flowList[j].attributeValue == attributeContents[index].content)
                                        {
                                            options += "<option value='"+attributeContents[index].content+"' selected>"+attributeContents[index].name+"</option>";
                                        }
                                        else
                                        {
                                            options += "<option value='"+attributeContents[index].content+"'>"+attributeContents[index].name+"</option>";
                                        }
                                    }
                                    if(options=="")
                                    {
                                        options = "<option value='"+flowList[j].attributeValue+"'>"+flowList[j].attributeValue+"</option>"
                                    }
                                }
                                strtd3+="<select class='select18' name='"+flowList[j].attributeValue+"' id='idAttribute"+attributeIndex+"' class='select18'><option value=''>请选择</option>"+options+"</select>";
                            }
                            else {
                                strtd3+= "<input type='text' name='"+flowList[j].attributeValue+"' id='idAttribute"+attributeIndex+"' class='textField18' value='"+(flowList[j].attributeValue || "")+"'>";

                            }
                            strtd3+="<input type='hidden' id='tempvalue"+attributeIndex+"' value='"+(flowList[j].attributeValue || "")+"'></td>";
                            attributeIndex ++;
                        }
                    }
                    strtr3="<tr>"+strtd3 +"</tr>";
                    str3+=strtr3;
                    strtd3='';
                    strtr3='';
                }
                $('#flow').html(str3);
            }
            $('#goodsCode').val("") ;    //查询条件置为空
            $('#goodsName').val("") ;    //查询条件置为空
            //basic
//            var basic = $("#basic");
//            basic.find("input").attr("readonly",true).css({
//            	"color":"#777",
//            	"background-color":"#f0f0f0"
//            });
//            basic.find("select").attr("disabled",true);
        }

    });
}

function changeValue(){
    var delivercenterQuery =  $("#delivercenter").val();
    var goodsCode = $("#goodsCodeExport").val();
    if ('' == delivercenterQuery) {
        Commons.showWarn("请选择配送中心名称");
        $("#warehouse")[0].options.length = 0;
        $("#warehouse").prepend("<option value=''>请选择</option>");
        $("#storage").html('');
        return false;
    }

    jQuery.ajax({
        type : 'POST',
        url : '/goodsattributemanager/queryware.json',
        data : {
            "goodsCode": goodsCode,
            "delivercenterCode" : delivercenterQuery,
            "attributeType":2
        },
        success : function(data) {
            var ware = data.insertListW;
            if (null != ware && ware !='') {
                $("#warehouse")[0].options.length = 0;
                $("#warehouse").prepend("<option value=''>请选择</option>");
                for ( var i = 0; i < ware.length; i++) {
                    $("#warehouse").append(
                        "<option value='" + ware[i].warehouseId + "'>"
                            + ware[i].warehouseName + "</option>");
                }
            }
        }
    });

}
function queryStoreAttribute(){
    var  delivercenterQuery=  $("#delivercenter").val();
    var goodsCode = $("#goodsCodeExport").val();
    var wareQuery = $("#warehouse").val();
    if ('' == wareQuery) {
        Commons.showWarn("请选择库房名称");
        $("#storage").html('');
        return false;
    }
    jQuery.ajax({
        type : 'POST',
        url : '/goodsattributemanager/queryStoreAttribute.json',
        data : {
            "goodsCode": goodsCode,
            "delivercenterCode" : delivercenterQuery,
            "attributeType":2,
            "warehouseId":wareQuery
        },
        success : function(data) {
            var storeAttributeList = data.storeAttributeList;
            var displayHtml = displayAttributeHTML(storeAttributeList);
            $('#storage').html(displayHtml);
            }
    });
}

function displayAttributeHTML(attributeList)
{
    var result = "";
    var strTd = "";
    var strTr ="";

    for(var i=0;i<(attributeList.length/4)+1;i++){
        for(var j=i*4;j<(i+1)*4;j++){
            if(null!=attributeList[j]) {
                var disabled = '';
                //如果为ERP属性或者为不是运营管理属性，则为不可修改
                if(attributeList[j].updateLevel==2 || attributeList[j].operationManagerFlag == 0)
                {
                    disabled='disabled';
                }
                strTd+="<td class='textL' width='90'><label class='textL'> "+attributeList[j].attributeName+"</label></td>" +
                    "<td class='attribute textL'>" +
                    "<input type='hidden' id='giid' name='giid' value='"+attributeList[j].goodsCode+"'>" +
                    "<input type='hidden' id='goodsCodeLog' name='goodsCodeLog' value='"+attributeList[j].goodsCode+"'>" +
                    "<input type='hidden' id='id"+attributeIndex+"' value='"+attributeList[j].attributeCode+"'>" +
                    "<input type='hidden' id='type"+attributeIndex+"' value='"+attributeList[j].attributeType+"'>" +
                    "<input type='hidden' id='name"+attributeIndex+"' value='"+attributeList[j].attributeName+"'>" ;
                //如果该属性的显示方式为下拉列表
                if(attributeList[j].showType==1)
                {
                    var options = "";
                    var attributeContents =attributeList[j].attributeContents;
                    if( attributeContents != null)
                    {
                        if(attributeList[j].attributeValue == "" || attributeList[j].attributeValue==null)
                        {
                            options += options += "<option value='' >请选择</option>";
                        }
                        for(var index = 0;index<attributeContents.length;index++)
                        {
                            var isSelected = '';

                            if(attributeList[j].attributeValue == attributeContents[index].content)
                            {
                                isSelected = 'selected';
                            }
                            options += "<option value='"+attributeContents[index].content+"' "+isSelected+">"+attributeContents[index].name+"</option>";
                        }
                        if(options=="")
                        {
                            options = "<option value='"+attributeList[j].attributeValue+"'>"+attributeList[j].attributeValue+"</option>"
                        }
                    }


                    strTd+="<select class='select18' name='"+attributeList[j].attributeValue+" '  id='idAttribute"+attributeIndex+"' class='select18' "+disabled+">"+options+"</select>";
                }
                else {
                    strTd+= "<input type='text' name='"+attributeList[j].attributeValue+"' id='idAttribute"+attributeIndex+"'  class='textField18' value='"+(attributeList[j].attributeValue || "")+"' "+disabled+">";
                }
                strTd +=   "<input type='hidden' id='tempvalue"+attributeIndex+"' value='"+(attributeList[j].attributeValue || "")+"'></td>" ;
                attributeIndex ++;
            }
        }
        strTr = "<tr>"+strTd +"</tr>";
        result +=strTr;
        strTd = '';
        strTr='' ;
    }
    return result;
}