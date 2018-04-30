function validateAttribute(){

    var goodsCodeValidate = $('#goodsCodeExport').val();
    var rndJqmId = 'validateAttrLoading';
    jqm.loading({
        jqmId: rndJqmId,
        size: 48,
        content: ''
    });
    jQuery.ajax({
        type : 'POST',
        data :
        {
            "goodsCode":goodsCodeValidate         //商品编码
        },
        url : '/goodsattributemanager/validate.json',
        success : function(data){
            if(data==true){
            	
            	Commons.showSuccess("验证成功!");
                $("#but_validate").hide();
            } else{
                Commons.showWarn("验证失败，请重新验证!");
            }
            $("#" + rndJqmId).jqmHide();
        }
    })
}