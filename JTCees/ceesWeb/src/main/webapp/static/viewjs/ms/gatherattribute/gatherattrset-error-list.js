/**
 * 商品属性值数据上传回执页面JS
 * User: zhaoming
 * Date: 14-9-25
 * Time: 下午1:26
 * To change this template use File | Settings | File Templates.
 */
$(function(){
    loadGrid();
    var data = {
        "total": 1,
        "rows": $.parseJSON($("#errorData").val())
    };

    $('#ordertable').datagrid('loadData', data);
});

/**
 *  异常数据列表
 */
function loadGrid(){
    $('#ordertable').datagrid({
        height:320,
        nowrap: true,
        collapsible:true,
        striped: true,
        url:'',
        sortOrder: 'desc',
        remoteSort: true,
        loadMsg:'数据加载中......',
        columns:[[
            {field:'sku',title:'商品编码',width:150},
            {field:'attributeName',title:'属性名称',width:150}
        ]],
        rownumbers:true
    });
}

/**
 * 返回商品属性维护页
 */
function goback(){
    window.location.href = "/gatherattributeset/toGatherAttrSetBySku";
}

