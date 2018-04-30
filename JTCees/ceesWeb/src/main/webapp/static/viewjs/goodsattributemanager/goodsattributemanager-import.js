function showImport() {
    $("#uploadshow").jqmShow();
}
//导入开始
function toDoImport() {
    if (null == $("#importExcel").val() || '' == $("#importExcel").val()) {
        return false;
    } else if ($("#importExcel").val().substring($("#importExcel").val().lastIndexOf(".") + 1) == "xlsx" || $("#importExcel").val().substring($("#importExcel").val().lastIndexOf(".") + 1) == "xls") {

        $("#importForm").submit();
        jqm.loading({
            size:48,
            content:'数据导入中...'
        });
        var obj = document.getElementById('cancelOE');
        obj.click();
    }
    else {
        Commons.showError('请选择有效的Excel文件');
    }
}