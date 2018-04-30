function exportExcel(){

    var goodsCodeExport = $('#goodsCodeExport').val();
    if(null == goodsCodeExport || goodsCodeExport==''){
        Commons.showWarn("请先查询出相应的商品，再选择导出");
        return null;
    }
    jqm.confirm({
        w:400,
        title:'提示',
        type:'attention',
        content:'<h4>是否确认要导出Excel？</h4>',
        self:self,
        onConfirm:function(){
            var m = document.getElementById("form0");
            var url="/goodsattributemanager/exportExcel?goodsCodeExport=" + goodsCodeExport;
            m.action = url;
            m.submit();
            m.action = '';
        }
    })
}
//  导出模板
function exportExcelTemplate(){
    jqm.confirm({
        w:400,
        title:'提示',
        type:'attention',
        content:'<h4>确定下载模板？</h4>',
        self:self,
        onConfirm:function(){
            var m = document.forms[0];
            var action = m.action;
            m.action = "/goodsattributemanager/exportExcelTemplate";
            m.submit();
            m.action = action;
        }
    })
}