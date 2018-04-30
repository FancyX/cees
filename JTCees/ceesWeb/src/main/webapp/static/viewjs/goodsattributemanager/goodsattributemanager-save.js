function getAttribute(){
    var dataArray = [];  //定义一个数组
    var isLegal = true;
    var i = 0;
    $(".attribute").each(function(){
//        i++;
//        var id = "id"+i;
//        var idAttribute = "idAttribute"+i;
//        var name = "name"+i;
//        var type = "type"+i;
//        var value = "tempvalue"+i;
        if(!isLegal)
        {
               return;
        }
        var attributeList = {};


//        attributeList.goodsCode = $("#giid").val();   //得到商品id
        attributeList.goodsCode = $("#goodsCodeLog").val();
//        attributeList.attributeCode = $("#"+id).val();     //得到属性id
//        attributeList.attributeType = $("#"+type).val();
//        attributeList.attributeName = $("#"+name).val();
//        attributeList.attributeValue =  $("#"+idAttribute).val();  //得到属性值
//        attributeList.attributeTempValue = $("#"+value).val();
        attributeList.attributeCode = $(this.childNodes[2]).val();     //得到属性id
        attributeList.attributeType = $(this.childNodes[3]).val();
        attributeList.attributeName = $(this.childNodes[4]).val();
        attributeList.attributeValue =  $(this.childNodes[5]).val();  //得到属性值
        attributeList.attributeTempValue = $(this.childNodes[6]).val();
        var needValidateAttributes =[ "Length","Width","Height","Weigth"];
        for(var index = 0;index < needValidateAttributes.length;index++)
        {
            if(needValidateAttributes[index]==attributeList.attributeCode)
            {
                var pattern = /^[1-9]+(\.\d+)?$|^0(\.\d+)?$|^[1-9]+[0-9]*(\.\d+)?$/;
                if (!pattern.test(attributeList.attributeValue))
                {
                     Commons.showWarn(attributeList.attributeName+"属性值输入不合法");
                    isLegal = false;
                    return;
                }

            }
        }
        dataArray.push(attributeList);    //插入到数组中
        i++;

    });
    //拼接一个包含商品id，属性id，和属性值的json串
    if(!isLegal)
    {
        return null;
    }
    return  JSON.stringify(dataArray);
}

function insert(){
    var attributeList = getAttribute();
    if(attributeList == null)
    {
        return;
    }
    var goodsCodeFlag =  $('#goodsCodeExport').val();
    if(null==goodsCodeFlag||goodsCodeFlag==''){
        Commons.showWarn("请先查询出商品信息再进行保存");
        return null;
    }
    var  delivercentercode=  $("#delivercenter").val();
    var storeid = $("#warehouse").val();
    if(storeid == null || storeid == "null" )
    {
        storeid = "";
    }
    //20131203 张颖  将验证注释掉  目的：调整页面布局不发生变化
  //  var validator = $('#form1').validate(formValidator);
  //  if (validator.form()) {
        var rndJqmId = 'saveAttrLoading';
        jqm.loading({
            jqmId: rndJqmId,
            size: 48,
            content: ''
        });
        jQuery.ajax({
            type :'POST',
            data:
            {
                attributeList : attributeList,
                delivercentercode:delivercentercode,
                storeid:storeid
            } ,
            url: '/goodsattributemanager/updateAttribute.json',
            success:function(data){
                if(data){
                    var j = 0;

                    $(".attribute").each(function(){
                        var idAttribute = "idAttribute"+j;
                        var value = "tempvalue"+j;
                        $("#"+idAttribute).val();  //得到属性值
                        $("#"+value).val($("#"+idAttribute).val());
                        j++;
                    });
                    Commons.showSuccess("保存成功");
                } else if(data == 0){
                    Commons.showWarn("保存成功，下发报文失败");
                }else{
                    Commons.showError("保存失败");
                }
                $("#" + rndJqmId).jqmHide();
            }

        })

  //  }
}